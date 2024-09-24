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
      // BlocBuilder ascolta i cambiamenti di ThemeCubit e ricostruisce MaterialApp di conseguenza:
      // Si occupa di ricostruire parti dell'interfaccia utente in risposta ai cambiamenti di stato emessi da un Bloc o Cubit.
      // In altre parole, BlocBuilder ascolta lo stato di un Bloc o Cubit specifico
      // e aggiorna il suo widget figlio ogni volta che lo stato cambia.
      // BlocBuilder<BlocType, StateType>
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp(
            title: 'Flutter Bloc & Cubit Demo',
            theme: theme, // Applica il tema corrente (Light/Dark)
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
