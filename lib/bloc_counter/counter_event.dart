// Deninizioni delle azioni che possono essere eseguite in un bloc o cubit:

// Definizione degli eventi per il CounterBloc
abstract class CounterEvent {}

// Evento per incrementare il contatore
class IncrementEvent extends CounterEvent {}

// Evento per decrementare il contatore
class DecrementEvent extends CounterEvent {}
