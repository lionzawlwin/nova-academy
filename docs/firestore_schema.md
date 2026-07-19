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

All three collections below are top-level collections (not sub-collections)
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
  specifically to avoid `Children` sub-collection reads (e.g. a
  "completions" sub-collection) on every dashboard load. If a detailed
  history is needed later, add a separate `Completions` collection but
  keep the denormalized totals as the fast path for dashboards/lists.
