import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_cubit.dart';

// Pagina che permette di cambiare il tema utilizzando il ThemeCubit
class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Non è necessario fornire un ThemeCubit qui perché è già fornito in main.dart
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tema con Cubit'),
      ),
      body: Center(
        child: Text(
          'Tema ${isDark ? 'Scuro' : 'Chiaro'}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Quando premuto, chiama il metodo toggleTheme del ThemeCubit
        onPressed: () => context.read<ThemeCubit>().toggleTheme(),
        child: Icon(Icons.brightness_6),
      ),
    );
  }
}
