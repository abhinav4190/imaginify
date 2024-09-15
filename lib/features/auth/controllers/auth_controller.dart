import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imaginify/features/auth/repositories/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends StateNotifier<AsyncValue<User?>> {
  final AuthRepository _authRepository;

  AuthController(this._authRepository) : super(const AsyncValue.data(null));

  signInWithGoogle() async {
    state = const AsyncValue.loading();
    try {
      final user = await _authRepository.signInWithGoogle();
      if (user!=null) {
        state = AsyncValue.data(user);
      } else {
        state = const AsyncValue.data(null);
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  //   signInWithGithub() async {
  //   state = const AsyncValue.loading();
  //   try {
  //     final user = await _authRepository.signInWithGithub();
  //     if (user == true) {
  //       state = AsyncValue.data(user);
  //     } else {
  //       state = const AsyncValue.data(null);
  //     }
  //   } catch (e) {
  //     state = AsyncValue.error(e, StackTrace.current);
  //   }
  // }


  User? get currentUser => _authRepository.currentUser;
}
