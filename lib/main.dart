import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:recipe/backend/firebase_auth_service.dart';
import 'package:recipe/core/providers/theme_provider.dart';
import 'package:recipe/firebase_options.dart';
import 'package:recipe/view/cubits/recipe_cubit.dart';
import 'package:recipe/repository/auth_repository.dart';
import 'package:recipe/view/cubits/auth_cubit.dart';
import 'package:recipe/view/screens/login_screen.dart';
import 'package:recipe/view/screens/main_screen.dart';
import 'package:recipe/view/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();
  final prefs = await SharedPreferences.getInstance();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  await setupDependencies();

  runApp(MyApp(prefs: prefs));
}

Future<void> setupDependencies() async {
  // Firebase services
  getIt.registerLazySingleton(() => FirebaseAuth.instance);
  getIt.registerLazySingleton(() => GoogleSignIn());
  getIt.registerLazySingleton(() => Supabase.instance.client);

  // Services
  getIt.registerLazySingleton(
    () => FirebaseAuthService(
      getIt<FirebaseAuth>(),
      getIt<GoogleSignIn>(),
    ),
  );

  // Repositories
  getIt.registerLazySingleton<IAuthRepository>(
    () => AuthRepository(getIt<FirebaseAuthService>()),
  );

  // Cubits & Blocs
  getIt.registerFactory(
    () => AuthCubit(
      getIt<IAuthRepository>(),
      getIt<SupabaseClient>(),
    ),
  );
  getIt.registerFactory(
    () => RecipeCubit(getIt<SupabaseClient>()),
  );
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;

  const MyApp({super.key, required this.prefs});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(prefs),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<AuthCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<RecipeCubit>(),
              ),
            ],
            child: MaterialApp(
              title: 'Recipe App',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color(0xFF4CAF50),
                  brightness: themeProvider.isDarkMode ? Brightness.dark : Brightness.light,
                ),
                useMaterial3: true,
                fontFamily: 'Nunito',
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => const SplashScreen(),
                '/login': (context) => const LoginScreen(),
                '/home': (context) => const MainScreen(),
              },
            ),
          );
        },
      ),
    );
  }
}
