import 'package:recipe_lite/data/sources/interfaces/auth_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthDataSource implements AuthDataSource {
  //Supabaseのインスタンスを保持する
  final SupabaseClient _supabaseClient = Supabase.instance.client;
  @override
  Future<String> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignedIn() async {
    return _supabaseClient.auth.currentSession != null;
  }

  @override
  Future<void> signInWithApple() {
    // TODO: implement signInWithApple
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    // TODO: implement signInWithEmailAndPassword
    await _supabaseClient.auth
        .signInWithPassword(email: email, password: password);
  }

  @override
  Future<void> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    // TODO: implement signUpWithEmailAndPassword
    await _supabaseClient.auth.signUp(email: email, password: password);
  }
}
