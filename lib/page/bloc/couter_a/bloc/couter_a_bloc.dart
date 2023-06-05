import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'couter_a_event.dart';
part 'couter_a_state.dart';

class CouterABloc extends Bloc<CouterAEvent, CouterAState> {
  CouterABloc() : super(CouterAState(count: 0)) {
    //add Event
    on<CounterEvenadd>((event, emit) {
      int count1 = state.count;
      count1 = count1++;

      emit(CouterAState(count: state.count + 1));
      print(count1);
    });
    //resetEvent
    on<CounterEvenReset>((event, emit) {
      emit(CouterAState(count: 0));
    });
  }
}
