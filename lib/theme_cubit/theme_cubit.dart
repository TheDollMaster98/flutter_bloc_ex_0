import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit che gestisce il tema dell'applicazione
class ThemeCubit extends Cubit<ThemeData> {
  // Inizializziamo il cubit con il tema chiaro
  ThemeCubit() : super(_lightTheme);

  // Definizione del tema chiaro
  static final _lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
  );

  // Definizione del tema scuro
  static final _darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[800],
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.grey[800]),
  );

  // Metodo per alternare tra tema chiaro e scuro
  void toggleTheme() {
    // Se il tema corrente è scuro, passiamo al tema chiaro, altrimenti al tema scuro
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
