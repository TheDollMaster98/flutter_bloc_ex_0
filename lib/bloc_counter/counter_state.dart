// Definizione degli stati per il CounterBloc:
abstract class CounterState {
  final int counterValue;

  CounterState(this.counterValue);
}

// Stato iniziale del contatore con valore 0
class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}

// Stato che rappresenta un cambiamento nel valore del contatore
class CounterValueChanged extends CounterState {
  CounterValueChanged(super.value);
}
