import 'package:d_store/features/auth/controllers/onbording/onbording_controller.dart';
import 'package:d_store/features/auth/screens/login/login_screen.dart';
import 'package:d_store/features/auth/screens/onbording/onbording_screen.dart';
import 'package:d_store/features/auth/screens/password_config/forget_password_screen.dart';
import 'package:d_store/features/auth/screens/signup/signup_screen.dart';
import 'package:d_store/features/auth/screens/signup/verify_email.dart';
import 'package:d_store/features/home/controller/navigation_controller.dart';
import 'package:d_store/features/home/screen/home_screen.dart';
import 'package:d_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBordingScreen();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpScreen();
      },
    ),
    GoRoute(
      path: '/onbording',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBordingScreen();
      },
    ),
    GoRoute(
      path: '/verify_email',
      builder: (BuildContext context, GoRouterState state) {
        return const VerifyEmailScreen();
      },
    ),
    GoRoute(
      path: '/forget_pwd',
      builder: (BuildContext context, GoRouterState state) {
        return const ForgetPasswordScreen();
      },
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnBordingCubit>(create: (context) => OnBordingCubit()),
        BlocProvider<NavigationControllerCubit>(
            create: (context) => NavigationControllerCubit()),
      ],
      child: MaterialApp.router(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
        routerConfig: _router,
      ),
    );
  }
}
