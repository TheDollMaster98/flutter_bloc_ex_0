import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

// Implementazione del CounterBloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // Il bloc inizia con lo stato CounterInitial
  CounterBloc() : super(CounterInitial()) {
    // Gestione dell'IncrementEvent
    on<IncrementEvent>((event, emit) {
      // Emettiamo un nuovo stato con il valore incrementato
      emit(CounterValueChanged(state.counterValue + 1));
    });

    // Gestione del DecrementEvent
    on<DecrementEvent>((event, emit) {
      // Emettiamo un nuovo stato con il valore decrementato
      emit(CounterValueChanged(state.counterValue - 1));
    });
  }
}
