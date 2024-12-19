import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/backend/firebase_auth_service.dart';
import 'package:recipe/model/user_model.dart';

abstract class IAuthRepository {
  Stream<User?> get authStateChanges;
  Future<Either<String, UserModel?>> signInWithGoogle();
  Future<void> signOut();
  bool get isSignedIn;
  Future<User?> getCurrentUser();
}

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuthService _authService;

  AuthRepository(this._authService);

  @override
  Stream<User?> get authStateChanges => _authService.authStateChanges;

  @override
  Future<Either<String, UserModel?>> signInWithGoogle() async {
    try {
      final userModel = await _authService.signInWithGoogle();
      return Right(userModel);
    } on FirebaseAuthException catch (e) {
      return Left(e.message ?? 'Firebase Auth Error');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await _authService.signOut();
  }

  @override
  bool get isSignedIn => _authService.isSignedIn;

  @override
  Future<User?> getCurrentUser() async {
    return _authService.currentUser;
  }
} 