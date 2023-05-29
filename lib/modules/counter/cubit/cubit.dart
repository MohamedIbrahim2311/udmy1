import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udmy1/modules/counter/cubit/stastes.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() :super (CounterInitialStates());

  static CounterCubit? get(context) => BlocProvider.of(context);
  int counter = 1;


  void minus() {
    counter--;
    emit(CounterMinus());
  }
  void plus() {
    counter++;
    emit(CounterPlus());
  }

}
