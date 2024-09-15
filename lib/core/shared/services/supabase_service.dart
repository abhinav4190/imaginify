import 'package:imaginify/core/secrets/supabase_secrets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {

  initialize() async {
    await Supabase.initialize(
        url: SupabaseSecrets.supabaseUrl,
        anonKey: SupabaseSecrets.supabaseAnonkey);
  }

  SupabaseClient get client => Supabase.instance.client;
}
