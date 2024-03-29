import 'package:d_store/features/auth/controllers/onbording/onbording_controller.dart';
import 'package:d_store/features/auth/screens/onbording/onbording_screen.dart';
import 'package:d_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnBordingCubit()),
      ],
      child: MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
        home: const OnBordingScreen(),
      ),
    );
  }
}
