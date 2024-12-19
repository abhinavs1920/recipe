import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/model/user_model.dart';

@lazySingleton
class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthService(
    this._firebaseAuth,
    this._googleSignIn,
  );

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<UserModel?> signInWithGoogle() async {
    try {
      this.log('Starting Google Sign In process');
      await _googleSignIn.signOut(); // Sign out first to force account selection
      this.log('Previous Google Sign In session cleared');
      
      // Start the sign-in process
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        this.logW('Google Sign In was cancelled by user');
        return null;
      }
      this.log('Google Sign In successful for: ${googleUser.email}');

      // Get auth details
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      this.log('Obtained Google authentication tokens');

      // Create credentials
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      this.log('Created Firebase credentials');

      // Sign in to Firebase
      final UserCredential userCredential = 
          await _firebaseAuth.signInWithCredential(credential);
      
      final User? user = userCredential.user;
      if (user == null) {
        this.logE('Firebase user is null after successful Google Sign In');
        return null;
      }
      this.log('Successfully signed in to Firebase: ${user.email}');

      // Create UserModel
      final userModel = UserModel(
        id: user.uid,
        email: user.email,
        name: user.displayName,
        avatarUrl: user.photoURL,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
      this.log('Created UserModel for: ${userModel.email}');
      
      return userModel;
    } on FirebaseAuthException catch (e, stackTrace) {
      this.logE('Firebase Auth Error', e, stackTrace);
      throw Exception('Firebase Auth Error: ${e.message}');
    } on Exception catch (e, stackTrace) {
      this.logE('Failed to sign in with Google', e, stackTrace);
      throw Exception('Failed to sign in with Google: $e');
    }
  }

  Future<void> signOut() async {
    try {
      this.log('Starting sign out process');
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
      this.log('Successfully signed out from all services');
    } catch (e, stackTrace) {
      this.logE('Failed to sign out', e, stackTrace);
      throw Exception('Failed to sign out: $e');
    }
  }

  User? get currentUser => _firebaseAuth.currentUser;

  bool get isSignedIn => currentUser != null;
} 