import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());

  int teamAPoints = 0 ;

  int teamBPoints = 0 ;

  void teamIncrement({ required String team , required int buttonNumber}){
  if(team == 'A'){
    teamAPoints += buttonNumber;
    emit(CounterAIncrement());
  }
  else if(team == 'B'){
    teamBPoints += buttonNumber;
    emit(CounterBIncrement());
  }
  else{
    teamBPoints = 0 ;
    teamAPoints = 0 ;
    emit(CounterReset());
  }

  }

}
