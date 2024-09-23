import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_ex_0/bloc_counter/counter_bloc.dart';
import 'package:flutter_bloc_ex_0/bloc_counter/counter_event.dart';
import 'package:flutter_bloc_ex_0/bloc_counter/counter_state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Creiamo e forniamo il CounterBloc
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contatore con Bloc'),
        ),
        body: const Center(
          child: CounterView(), // Mostra il valore del contatore
        ),
        floatingActionButton: const CounterButtons(), // Pulsanti per interagire
      ),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BlocBuilder ricostruisce il widget quando lo stato cambia
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Text(
          '${state.counterValue}',
          style: const TextStyle(fontSize: 48),
        );
      },
    );
  }
}

class CounterButtons extends StatelessWidget {
  const CounterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'increment',
          onPressed: () {
            // Invia un IncrementEvent al bloc
            context.read<CounterBloc>().add(IncrementEvent());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 8),
        FloatingActionButton(
          heroTag: 'decrement',
          onPressed: () {
            // Invia un DecrementEvent al bloc
            context.read<CounterBloc>().add(DecrementEvent());
          },
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
