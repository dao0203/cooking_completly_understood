import 'package:recipe_lite/data/sources/interfaces/auth_data_source.dart';
import 'package:recipe_lite/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;
  AuthRepositoryImpl(this._authDataSource);
  @override
  Future<String> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignedIn() async {
    return _authDataSource.isSignedIn();
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    _authDataSource.signInWithEmailAndPassword(email, password);
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    await _authDataSource.signUpWithEmailAndPassword(email, password);
  }
}
