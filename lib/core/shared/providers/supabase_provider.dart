import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imaginify/core/shared/services/supabase_service.dart';

final supabaseClientProvider = Provider((ref) {
  return SupabaseService().client;
});