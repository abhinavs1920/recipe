import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/model/user_model.dart';
import 'package:recipe/repository/auth_repository.dart';
import 'package:recipe/view/cubits/auth_state.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository _authRepository;
  final supabase.SupabaseClient _supabaseClient;

  AuthCubit(this._authRepository, this._supabaseClient) : super(const AuthState.initial());

  Future<void> checkAuthStatus() async {
    try {
      this.log('Checking auth status');
      emit(const AuthState.loading());
      
      final user = await _authRepository.getCurrentUser();
      if (user != null) {
        this.log('User is signed in: ${user.email}');
        try {
          final userModel = await _getUserFromSupabase(user.uid);
          this.log('Found user in Supabase');
          emit(AuthState.authenticated(userModel));
        } catch (e) {
          this.logW('User not found in Supabase, creating new record');
          final userModel = UserModel(
            id: user.uid,
            email: user.email,
            name: user.displayName,
            avatarUrl: user.photoURL,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          );
          await _saveUserToSupabase(userModel);
          emit(AuthState.authenticated(userModel));
        }
      } else {
        this.log('No user signed in');
        emit(const AuthState.unauthenticated());
      }
    } catch (e, stackTrace) {
      this.logE('Error checking auth status', e, stackTrace);
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      this.log('Starting Google Sign In');
      emit(const AuthState.loading());
      
      final result = await _authRepository.signInWithGoogle();
      
      await result.fold(
        (error) async {
          this.logE('Google Sign In failed: $error');
          emit(AuthState.error(error));
        },
        (userModel) async {
          if (userModel != null) {
            this.log('Google Sign In successful: ${userModel.email}');
            await _saveUserToSupabase(userModel);
            emit(AuthState.authenticated(userModel));
          } else {
            this.logW('Google Sign In cancelled');
            emit(const AuthState.unauthenticated());
          }
        },
      );
    } catch (e, stackTrace) {
      this.logE('Unexpected error during Google Sign In', e, stackTrace);
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> signOut() async {
    try {
      this.log('Signing out user');
      emit(const AuthState.loading());
      await _authRepository.signOut();
      this.log('Sign out successful');
      emit(const AuthState.unauthenticated());
    } catch (e, stackTrace) {
      this.logE('Error signing out', e, stackTrace);
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _saveUserToSupabase(UserModel user) async {
    try {
      this.log('Saving user to Supabase: ${user.email}');
      await _supabaseClient.from('users').upsert(
        user.toJson(),
        onConflict: 'id',
      );
      this.log('User saved to Supabase successfully');
    } catch (e, stackTrace) {
      this.logE('Error saving user to Supabase', e, stackTrace);
      this.logE(e.toString());
      throw Exception('Failed to save user data: ${e.toString()}');
    }
  }

  Future<UserModel> _getUserFromSupabase(String id) async {
    try {
      this.log('Fetching user from Supabase: $id');
      final response = await _supabaseClient
          .from('users')
          .select()
          .eq('id', id)
          .single();
      
      this.log('User fetched from Supabase successfully');
      return UserModel.fromJson(response);
    } catch (e, stackTrace) {
      this.logE('Error fetching user from Supabase', e, stackTrace);
      throw Exception('Failed to get user data: ${e.toString()}');
    }
  }
} 