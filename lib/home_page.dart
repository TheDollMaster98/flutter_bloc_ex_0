import 'package:flutter/material.dart';
import 'package:flutter_bloc_ex_0/bloc_counter/counter_page.dart';
import 'package:flutter_bloc_ex_0/theme_cubit/theme_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar con il titolo dell'app
      appBar: AppBar(
        title: Text('Flutter Bloc & Cubit Demo'),
      ),
      body: Center(
        // Colonna con i pulsanti per navigare alle diverse pagine
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Contatore con Bloc'),
              onPressed: () {
                // Naviga alla pagina del contatore
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterPage()),
                );
              },
            ),
            SizedBox(height: 16), // Spazio tra i pulsanti
            ElevatedButton(
              child: Text('Tema con Cubit'),
              onPressed: () {
                // Naviga alla pagina del tema
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThemePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
