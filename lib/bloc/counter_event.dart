part of 'counter_bloc.dart';

@immutable
// Inicializamos la clase del evento Contador
abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

// Definimos la clase incremento que se extiende de la clase Contador
class CounterIncrement extends CounterEvent {}

// Definimos la clase disminuir que se extiende de la clase Contador
class CounterDecrement extends CounterEvent {}
