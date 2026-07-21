# Nova Academy — Firestore Schema (Spark / Free Tier)

> **Security rules are implemented** in `firestore.rules` at the project
> root (RBAC matching this document, including the hardcoded owner-email
> bypass). **Demo/mock data seeding** is implemented in
> `lib/core/services/seed_service.dart` (`seedDatabase`), wired to a
> "Seed Demo Data" button on the Owner Admin panel
> (`lib/features/dashboard/owner_admin_screen.dart`). See
> `tool/seed_database.dart` for why seeding is in-app rather than a
> standalone script on this Spark-plan/client-only stack, and
> `test/seed_service_test.dart` for the data-integrity tests covering the
> seeded content.

This document is the source of truth for Firestore collection shapes. It is
designed to stay comfortably inside the **Firebase Spark (free) plan**
limits: 1 GiB stored data, 50K reads/20K writes/20K deletes per day, and 10
concurrent connections are not a concern client-side but read/write volume
is — so the schema favors **denormalization over joins** and **listener
reuse over polling**.

All collections below are top-level collections (not sub-collections)
so a single `collection().doc(id)` lookup is always one read, and so
`UserModel.linkedStudents` / `ChildModel.parentId` can cross-reference
without composite paths.

---

## 1. `Users`

Document id == Firebase Auth `uid`.

| Field              | Type                        | Notes |
|---------------------|-----------------------------|-------|
| `id`                | `string`                    | Denormalized copy of the doc id. Included in `fromJson` payloads so `UserModel` doesn't need a second parameter just to carry the id. |
| `email`             | `string`                    | Lowercase, matches Firebase Auth email. |
| `role`              | `string` enum               | One of `owner`, `parent`, `teacher`, `student`. See `UserRole` in `lib/models/user_model.dart`. |
| `subscriptionTier`  | `string` enum               | One of `free`, `premium`. See `SubscriptionTier`. |
| `linkedStudents`    | `array<string>`             | For `parent`: ids of that parent's `Children` docs. For `teacher`: ids of `Children` docs the teacher has been linked to by a parent. Denormalized so dashboards can render a child/teacher list with **zero extra queries** — no `where('parentId', '==', uid)` fan-out needed for the common case. |
| `subscriptionState` | `map` (optional)             | Nested (not a separate collection) snapshot of subscription lifecycle status/source/expiry — see `lib/models/subscription_state_model.dart`. Optional/nullable: most existing/seeded users predate this field and deserialize with it `null`, falling back to the plain `subscriptionTier` check (see `isPremiumEntitledProvider` in `lib/providers/billing_providers.dart`). |

**Owner bypass (client-side, not a Firestore field):** the account
`lionzawlwin@gmail.com` is hardcoded in `AppConstants.ownerEmail` /
`isOwnerEmail()`. `currentUserModelProvider` force-overrides
`role = owner` and `subscriptionTier = premium` for that email at read
time, regardless of what (if anything) is stored in this collection. Do
**not** rely on the `role` field alone anywhere in the app for
paywall/owner checks — always read through `currentUserModelProvider`.

### Indexes
No composite indexes required yet. Single-field equality lookups only
(`doc(uid)` reads, occasional `where('email', '==', ...)` for invite
flows) — Firestore auto-indexes single fields.

### Security rules (guidance for a later phase)
- A user may read/write only their own `Users/{uid}` document
  (`request.auth.uid == uid`), **except** `role` and `subscriptionTier`
  should not be client-writable (mutate via a trusted path only, e.g. a
  Cloud Function or manual console edit) to prevent a parent from
  self-granting `owner`/`premium`.
- Teachers/parents should never be able to read another user's full
  `Users` document — only the fields needed for a teacher invite (email
  lookup) should be exposed, likely via a narrower rule or a callable
  function rather than open collection reads.

---

## 2. `Children`

Document id == auto-generated Firestore id.

| Field           | Type              | Notes |
|-----------------|-------------------|-------|
| `id`            | `string`          | Denormalized copy of the doc id. |
| `parentId`      | `string`          | uid of the owning `Users` document (the parent). Indexed implicitly for `where('parentId', '==', uid)` queries used as a fallback/verification path. |
| `aliasName`     | `string`          | Child's display nickname (not necessarily legal name) shown throughout the UI. |
| `avatarUrl`     | `string`          | Empty string default; points at a bundled/stock avatar asset identifier or a Storage URL later. Never required to be non-empty. |
| `currentGrade`  | `string` enum     | One of `nursery`, `kg`, `year1`..`year6`, `secondary1`..`secondary3`, `igcse`. See `Grade` in `lib/models/child_model.dart`. |
| `totalStars`    | `int`             | Denormalized running total, incremented atomically (via `FieldValue.increment`) whenever a `LearningModules` completion is recorded elsewhere, so the dashboard never has to sum a sub-collection of completion events. |

### Indexes
- Single-field index on `parentId` (auto-created) covers "list my
  children" queries (`where('parentId', '==', uid)`).
- If teacher dashboards later need `where('parentId', 'in', [...])`
  combined with ordering, add a composite index at that time — not
  needed for Phase 1.

### Security rules (guidance)
- Read/write allowed when `request.auth.uid == resource.data.parentId`.
- Teachers granted read-only access to a specific child should be
  authorized via the `linkedStudents` array on their own `Users`
  document (checked with a `get()` inside the rule), not by opening
  `Children` reads to all authenticated users.

---

## 3. `LearningModules`

Document id == auto-generated Firestore id (or a stable slug like
`math-year2-fractions-01` if content is authored by hand — either works,
`id` is always denormalized into the doc body).

| Field              | Type          | Notes |
|--------------------|---------------|-------|
| `id`               | `string`      | Denormalized copy of the doc id. |
| `subject`          | `string`      | Free-text subject key (e.g. `math`, `science`, `phonics`). Kept as `string` rather than an enum in Firestore so new subjects can be added by content ops without a client release; the UI maps known keys to localized labels via `AppLocalizations` (`subjectMath`, `subjectScience`, ...) and falls back to the raw value for unknown ones. |
| `grade`            | `string` enum | One of the `Grade` values (see `Children.currentGrade` above). Lets the client do `where('grade', '==', ...)` to fetch only what a given child needs. |
| `contentType`      | `string`      | Free-text content kind, e.g. `video`, `quiz`, `interactive`, `worksheet`. |
| `titleEn`          | `string`      | English title — required, bilingual strings are stored per-document rather than looked up, since module content is user-authored data, not app chrome (`app_en.arb`/`app_my.arb` cover UI chrome only). |
| `titleMy`          | `string`      | Burmese title — required. |
| `descriptionEn`    | `string`      | English description — required. |
| `descriptionMy`    | `string`      | Burmese description — required. |
| `starsReward`      | `int`         | Stars granted to a child's `totalStars` on completion. |
| `pathId`           | `string`      | Defaults to `''`. Stable slug grouping this module into a named, ordered "Learning Path" (e.g. `year4-math-fractions`), so a large curriculum catalog can be organized as sequences instead of a flat list. Empty string means the module is ungrouped (not part of any path) — pre-existing documents created before this field was added deserialize with this default, no migration needed. |
| `pathTitleEn`      | `string`      | Defaults to `''`. English display title for the path, e.g. `Year 4 Math: Fractions`. Denormalized onto every module in the path (rather than looked up from a separate `LearningPaths` collection) so a path header can render from the same document batch already fetched for the module list — zero extra reads. |
| `pathTitleMy`      | `string`      | Defaults to `''`. Burmese display title for the path, same denormalization rationale as `pathTitleEn`. |
| `pathOrder`        | `int`         | Defaults to `0`. This module's 1-based position within its path (1, 2, 3, ...), used purely for client-side display ordering (`orderBy`-style sort after fetch, or a Firestore `orderBy('pathOrder')` query scoped to a `pathId`). |

### Design note: quiz question content lives in Dart, not Firestore

The fields above describe **module catalog metadata only** — what a module
is called, what path it belongs to, what grade/subject it targets. The
actual **quiz question content** (question text, answer choices, correct
answer, per-question explanations) is intentionally **not** stored as
Firestore documents. It ships as compiled Dart data bundled into the app
binary: see `lib/features/lessons/mock_quiz_data.dart` (legacy/fallback
Primary quiz content), `lib/features/lessons/nursery_kg_activity_bank.dart`
(Nursery/KG match-pair content), and
`lib/features/lessons/primary_curriculum_bank.dart` (Year 1-6 grade-keyed
MCQ content, looked up per-module via `quizQuestionsForModule`), which
together establish the pattern later grade-band curricula will follow.

This is a deliberate Spark free-tier tradeoff, not an oversight. A
curriculum-scale question bank (potentially thousands of questions across
grades/subjects) read as Firestore documents — even denormalized into
arrays on module docs — would consume a meaningful slice of the 50K
reads/day quota every time students work through lessons, and that cost
scales with usage in a way a free tier can't absorb. Static in-app Dart
data costs **zero Firestore reads at runtime**: it's compiled into the app
bundle and available instantly offline, with app updates (not admin writes)
as the update path. `LearningModules` documents stay small and cheap to
read because they only carry catalog metadata; the heavy content lives
where it's free.

### Indexes
- Composite index on `(subject, grade)` recommended once query volume
  grows, to support "modules for this child's grade in this subject"
  without fetching-then-filtering client-side. Not required for an
  initial content set small enough to fetch per-grade and filter
  in-memory.
- Composite index on `(grade, contentType)` only if a "all quizzes for
  this grade" browse view ships.

### Security rules (guidance)
- Publicly readable by any authenticated user (content catalog), not
  writable by clients — content is managed by the owner/ops via console
  or a future admin tool, keeping write volume (and abuse risk) at zero
  from the app itself.

---

## 4. `LessonAttempts`

Document id == auto-generated Firestore id. Telemetry foundation for the
course-pathway progression system — the analytics moat this schema is
designed to protect without also blowing the free-tier write budget.

| Field                | Type     | Notes |
|-----------------------|----------|-------|
| `id`                  | `string` | Denormalized copy of the doc id. |
| `childId`             | `string` | The completing child's `Children` doc id. |
| `lessonId`            | `string` | A `DailyLessonDef.id` (see `lib/features/lessons/course_pathway_bank.dart`) or a `LearningModuleModel.id`. Deliberately the *only* content pointer stored — no `pathwayId`/`weekId` denormalized alongside it, because `courseDailyLessonById` + `pathwayContainingWeek` (`lib/providers/course_progress_providers.dart`) already derive the owning pathway/week from this id at read time. One less field to keep in sync. |
| `kind`                | `string` | Mirrors `LessonKind`'s name (`quiz`, `dragMatch`, `sorting`, `reading`). |
| `correctCount`        | `int`    | Questions answered correctly. For `dragMatch`/`sorting` kind attempts this always equals `totalCount` — those screens have no partial-credit path (every pair/item must be placed correctly to reach completion at all), so recording a 100% score for them is an honest reflection of how they actually work, not a placeholder. |
| `totalCount`          | `int`    | Total questions/items in the lesson. |
| `completedAtMillis`   | `int`    | `DateTime.now().millisecondsSinceEpoch` at write time. Plain `int` rather than a Firestore `Timestamp`, so `lib/models/` (which the rest of the codebase keeps Firestore-type-free) doesn't need a custom `JsonConverter` for one field. |

### Design note: one document per completed lesson, never per question

This is the load-bearing decision in this section. A student answering,
say, 5 questions in one quiz lesson produces **one** `LessonAttempts`
write, not five. At the Spark plan's 20K writes/day ceiling, per-question
telemetry would multiply write volume by the average question count per
lesson (4-6x in the authored content so far) for a modest fleet of active
students, while a per-lesson summary — `correctCount`/`totalCount` already
carries the score signal a "which modules are underperforming" dashboard
actually needs — costs exactly one write per `markModuleCompleted` call
site already in the codebase (`mcq_quiz_screen.dart`,
`drag_match_screen.dart`, `sorting_screen.dart`, `reading_screen.dart`),
so telemetry adds **zero additional write call sites**, only one more
field-rich write at an already-existing one.

No Cloud Function/BigQuery export exists or is planned for this
collection: Cloud Functions require the Blaze (pay-as-you-go) billing plan
to be enabled at all, even for usage that nets to $0, which conflicts with
this project's hard "Spark plan only, no paid APIs" constraint. Any future
"performing modules" dashboard reads and aggregates `LessonAttempts`
documents directly from the client (e.g. an owner/admin screen querying
`where('lessonId', '==', ...)` and reducing client-side), the same
Spark-native pattern every other read path in this schema already uses.

### Indexes
- Composite index on `(lessonId, completedAtMillis)` recommended once an
  aggregate "performance per lesson" admin view ships, to support an
  ordered per-lesson history query without a full collection scan.
- Composite index on `(childId, completedAtMillis)` if a per-child
  attempt history view ships.

### Security rules (guidance)
- `create`-only from the client (see `firestore.rules`'s `ownsChild`
  helper) — a parent/teacher/owner may record an attempt for a child they
  own/are linked to/administer, but nothing may `update` or `delete` an
  existing attempt once written. Each document is an immutable historical
  record, not mutable state like `Children.completedModuleIds`.

---

## 5. `BillingEvents`

Document id == auto-generated Firestore id. An append-only revenue
ledger — the source of truth for automated P&L, distinct from the mutable
`Users.subscriptionState` snapshot it was derived from (see
`lib/models/billing_event_model.dart`'s doc comment: a bug that corrupts
the snapshot can never silently erase revenue history because this ledger
is never mutated to match it).

| Field                | Type     | Notes |
|-----------------------|----------|-------|
| `id`                  | `string` | Denormalized copy of the doc id. |
| `uid`                 | `string` | The `Users` doc id (Firebase Auth uid) this event belongs to. |
| `type`                | `string` enum | One of `purchase`, `renewal`, `cancellation`, `refund`, `grant`, `revoke`. See `BillingEventType`. |
| `tier`                | `string` enum | The `SubscriptionTier` (`free`/`premium`) this event transitions to/reflects. |
| `source`              | `string` enum | One of `manual`, `ios_iap`, `android_iap`, `promo`. See `BillingSource` in `lib/models/subscription_state_model.dart`. |
| `amountMinorUnits`    | `int`    | Cash amount in minor currency units (e.g. cents). Defaults to `0` — `cancellation`/`grant`/`revoke` carry no cash movement of their own (see `BillingLedgerTotals.netRevenueMinorUnits`). |
| `currencyCode`        | `string` | ISO 4217 currency code. Defaults to `'USD'`. |
| `occurredAtMillis`    | `int`    | `DateTime.now().millisecondsSinceEpoch` at write time, same plain-`int`-not-`Timestamp` convention as `LessonAttempts.completedAtMillis`. |

### Design note: append-only, never mutated

Same "one immutable doc per event" pattern as `LessonAttempts`. Revenue
recognition folds this list (`BillingLedgerTotals.netRevenueMinorUnits`)
rather than trusting any single mutable snapshot, so the ledger stays
trustworthy even if a bug elsewhere corrupts `Users.subscriptionState`.

### Indexes
- Composite index on `(uid, occurredAtMillis)` recommended once a
  per-user billing history view ships.
- Composite index on `(type, occurredAtMillis)` if an admin "all
  purchases this month" view ships.

### Security rules (guidance)
- `create`-only from the client beyond the owner (see `firestore.rules`),
  scoped to the event's own `uid == request.auth.uid` — no `update`/
  `delete` path, matching the "immutable historical record" rule already
  established for `LessonAttempts`.

---

## 6. `UsageTelemetry`

Document id == `"{uid}_{dateYyyymmdd}"` (one document per user per
calendar day). The FinOps side of the ledger — estimated Firestore
read/write volume against the subscription tier that generated it. See
`lib/models/usage_telemetry_model.dart`'s doc comment and
`flushUsageTelemetry` in `lib/providers/cost_telemetry_providers.dart` for
the write path.

| Field                | Type     | Notes |
|-----------------------|----------|-------|
| `id`                  | `string` | Denormalized copy of the doc id. |
| `uid`                 | `string` | The `Users` doc id this day's telemetry belongs to. |
| `dateYyyymmdd`        | `string` | Calendar date this document aggregates, e.g. `20260721`. |
| `estimatedReads`      | `int`    | Defaults to `0`. Upserted via `FieldValue.increment`, not overwritten — safe against a missing doc/field, which Firestore treats as `0`. |
| `estimatedWrites`     | `int`    | Defaults to `0`. Same increment-upsert convention as `estimatedReads`. |
| `tier`                | `string` enum | The `SubscriptionTier` (`free`/`premium`) active at the time of the flush that last touched this document. |
| `lastUpdatedAtMillis` | `int`    | `DateTime.now().millisecondsSinceEpoch` at the most recent flush. |

### Design note: client-self-reported, not a cost-enforcement boundary

`estimatedReads`/`estimatedWrites` are counted client-side by
`CostMeterService` and flushed in one write per flush, regardless of how
many operations accumulated since the last flush (see
`flushUsageTelemetry`'s doc comment) — the same "aggregate, don't log
every event" philosophy as `LessonAttempts`. A modified client could
under-report these counters, so this collection is a **monitoring
signal** for a cost-vs-tier dashboard only, never the actual enforcement
boundary against runaway free-tier cost (that boundary is
`firestore.rules` plus deliberate query-shape discipline in the providers
themselves).

### Indexes
- Composite index on `(dateYyyymmdd, tier)` recommended once an
  aggregate "cost by tier per day" admin view ships.

### Security rules (guidance)
- Both `create` and `update` (not just `create`) are open to the
  document's own `uid` beyond the owner, since this is an
  increment-based upsert into the same day's document rather than a
  one-shot immutable record like `BillingEvents`/`LessonAttempts`.

---

## Free-tier read/write budget notes

- Prefer **snapshot listeners** (`.snapshots()`) over repeated
  `.get()` polling — a listener's first payload counts as reads equal to
  the docs returned, but subsequent delta updates are cheap; polling on
  a timer burns the daily read quota fast.
- `currentUserModelProvider` opens exactly one listener per signed-in
  session (`Users/{uid}`), not one per screen — screens should `watch`
  the shared provider rather than each opening their own Firestore
  query.
- `Children.totalStars` and `Users.linkedStudents` are denormalized
  specifically to avoid `Children` sub-collection reads on every
  dashboard load. `LessonAttempts` (section 4) is that "detailed history"
  collection, added once it was actually needed — the denormalized
  totals on `Children` stay the fast path for dashboards/lists;
  `LessonAttempts` is only queried by a future analytics/admin view, not
  on every app load.
