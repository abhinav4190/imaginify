import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imaginify/core/shared/providers/supabase_provider.dart';
import 'package:imaginify/features/auth/controllers/auth_controller.dart';
import 'package:imaginify/features/auth/repositories/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final supabaseClient = ref.read(supabaseClientProvider);
  return AuthRepository(supabaseClient: supabaseClient);
});

final authControllerProvider = StateNotifierProvider<AuthController, AsyncValue<User?>>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthController(repository);
});


