import 'package:google_sign_in/google_sign_in.dart';
import 'package:imaginify/core/secrets/auth_repo_secrets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  final SupabaseClient _supabaseClient;
  AuthRepository({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  // google sign-in method
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
          clientId: AuthRepoSecrets.iosClientId,
          serverClientId: AuthRepoSecrets.webClientId);

      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        print('nall');
        return null;
        
      }
      final googleAuth = await googleUser.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null) {
        throw 'No Access Token found.';
      }
      if (idToken == null) {
        throw 'No ID Token found.';
      }

      AuthResponse res =
          await _supabaseClient.auth.signInWithIdToken(provider: OAuthProvider.google, idToken: idToken);

      return res.user;
    } catch (e) {
      return null;
    }
  }

  //github sign-in method
  Future<bool> signInWithGithub() async {
    try {
      final res =
          await _supabaseClient.auth.signInWithOAuth(OAuthProvider.github);

      return res;
    } catch (e) {
      return false;
    }
  }

  User? get currentUser => _supabaseClient.auth.currentUser;
}
