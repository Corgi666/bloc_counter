import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'couter_b_event.dart';
part 'couter_b_state.dart';

class CouterBBloc extends Bloc<CouterBEvent, CouterBState> {
  CouterBBloc() : super(CouterBInitial()) {
    on<CouterBEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
