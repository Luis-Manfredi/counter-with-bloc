import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // Iniciamos la clase CounterState asignándole
  // al contador el valor inicial, en este caso el cero.
  CounterBloc() : super(const CounterState(counter: 0)) {
    // Declaramos el primera función que escucha cuando el
    // estado del contador aumenta
    on<CounterIncrement>((event, emit) {
      // Definimos la lógica sobre cómo funciona al aumentar
      final counter = state.counter + 1;
      // Emitimos el evento con el nuevo valor del contador
      emit(CounterState(counter: counter));
    });

    // Declaramos la segunda función que escucha cuando el
    // estado del contador disminuye
    on<CounterDecrement>((event, emit) {
      // Definimos la lógica sobre cómo funciona al disminuir
      final counter = state.counter - 1;
      // Emitimos el evento con el nuevo valor del contador
      emit(CounterState(counter: counter));
    });
  }
}
