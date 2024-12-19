import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:recipe/backend/firebase_auth_service.dart';
import 'package:recipe/firebase_options.dart';
import 'package:recipe/view/cubits/recipe_cubit.dart';
import 'package:recipe/repository/auth_repository.dart';
import 'package:recipe/view/cubits/auth_cubit.dart';
import 'package:recipe/view/cubits/theme_cubit.dart';
import 'package:recipe/view/screens/login_screen.dart';
import 'package:recipe/view/screens/main_screen.dart';
import 'package:recipe/view/screens/splash_screen.dart';
import 'package:recipe/view/screens/home_screen.dart';
import 'package:recipe/view/screens/profile_screen.dart';
import 'package:recipe/view/screens/recipe_details_screen.dart';
import 'package:recipe/view/screens/settings_screen.dart';
import 'package:recipe/view/screens/grocery_list_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  
  await setupDependencies(prefs);

  runApp(const MyApp());
}

Future<void> setupDependencies(SharedPreferences prefs) async {
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

  // Cubits
  getIt.registerSingleton<SharedPreferences>(prefs);
  getIt.registerSingleton<ThemeCubit>(ThemeCubit(prefs));
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<RecipeCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ThemeCubit>(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDarkMode) {
          return MaterialApp(
            title: 'Recipe App',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF40CC92),
                brightness: isDarkMode ? Brightness.dark : Brightness.light,
              ),
              useMaterial3: true,
              fontFamily: 'Nunito',
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const SplashScreen(),
              '/login': (context) => const LoginScreen(),
              '/home': (context) => const MainScreen(),
              '/recipe-details': (context) => const RecipeDetailsScreen(),
              '/settings': (context) => const SettingsScreen(),
              '/grocery-list': (context) => const GroceryListScreen(),
            },
          );
        },
      ),
    );
  }
}
