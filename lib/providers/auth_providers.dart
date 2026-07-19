import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/user_model.dart';
import 'firebase_providers.dart';

/// Emits the raw Firebase Auth user, or null when signed out.
final authStateChangesProvider = StreamProvider<User?>((ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return auth.authStateChanges();
});

/// Emits the [UserModel] for the signed-in user, sourced from the
/// `Users/{uid}` Firestore document.
///
/// CRITICAL owner bypass: when the authenticated email matches
/// [AppConstants.ownerEmail] (checked via [isOwnerEmail]), the emitted
/// model always has `role == UserRole.owner` and `subscriptionTier ==
/// SubscriptionTier.premium`, regardless of what is stored in Firestore --
/// including before any `Users/{uid}` document exists at all. This
/// guarantees the owner account bypasses every paywall and role check
/// throughout the app from the very first sign-in, forever.
final currentUserModelProvider = StreamProvider<UserModel?>((ref) {
  final authState = ref.watch(authStateChangesProvider);
  final firestore = ref.watch(firestoreProvider);

  return authState.when(
    data: (user) {
      if (user == null) return Stream<UserModel?>.value(null);

      final ownerBypass = isOwnerEmail(user.email);

      return firestore
          .collection(AppConstants.usersCollection)
          .doc(user.uid)
          .snapshots()
          .map<UserModel?>((doc) {
            UserModel model;
            final data = doc.data();
            if (doc.exists && data != null) {
              model = UserModel.fromJson({'id': doc.id, ...data});
            } else {
              // No Firestore doc yet (e.g. first-ever sign-in). Fall back to a
              // sensible default derived purely from the Auth user so the app
              // still has something to render.
              model = UserModel(id: user.uid, email: user.email ?? '');
            }

            if (ownerBypass) {
              // Force owner + premium no matter what Firestore says or
              // whether a document exists at all yet.
              model = model.copyWith(
                role: UserRole.owner,
                subscriptionTier: SubscriptionTier.premium,
              );
            }

            return model;
          });
    },
    loading: () => const Stream<UserModel?>.empty(),
    error: (err, stack) => Stream<UserModel?>.error(err, stack),
  );
});
