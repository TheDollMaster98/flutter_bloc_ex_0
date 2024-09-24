import 'package:flutter/material.dart';
import 'package:flutter_bloc_ex_0/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_cubit/theme_cubit.dart';

class FlutterBlocExApp extends StatelessWidget {
  const FlutterBlocExApp({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocProvider fornisce un'istanza di un Bloc o Cubit ai suoi widget figli.
    // Utilizza il meccanismo di InheritedWidget di Flutter
    // per rendere il Bloc accessibile lungo l'albero dei widget.
    return BlocProvider(
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
