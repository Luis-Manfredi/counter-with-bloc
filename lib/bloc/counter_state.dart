part of 'counter_bloc.dart';

// Creamos la clase Contador Estado que extiende de Equatable
class CounterState extends Equatable {
  // Iniciamos la variable contador
  final int counter;
  // Creamos el constructor y requerimos la variable contador
  const CounterState({
    required this.counter
  });

  // Cerramos la clase añadiendo la variable contador a la lista
  // de propiedades
  @override
  List<Object> get props => [counter];
}
