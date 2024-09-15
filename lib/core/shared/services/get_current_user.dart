import 'package:imaginify/core/shared/services/supabase_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GetCurrentUser {
  final SupabaseService _supabaseService;
  late final supabaseClient = _supabaseService.client;
  late final User? currentSession;

  GetCurrentUser(this._supabaseService) {
    currentSession = supabaseClient.auth.currentUser;
  }

  User? get currentUser => currentSession;
}
