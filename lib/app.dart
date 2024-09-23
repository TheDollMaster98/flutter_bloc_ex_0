import 'package:flutter/material.dart';
import 'package:flutter_bloc_ex_0/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_cubit/theme_cubit.dart';

class FlutterBlocExApp extends StatelessWidget {
  const FlutterBlocExApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // BlocProvider fornisce il ThemeCubit a tutta l'applicazione
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        // BlocBuilder ascolta i cambiamenti di ThemeCubit e ricostruisce MaterialApp di conseguenza
        builder: (context, theme) {
          return MaterialApp(
            title: 'Flutter Bloc & Cubit Demo',
            theme: theme, // Applica il tema corrente (Light/Dark)
            home: HomePage(),
          );
        },
      ),
    );
  }
}
