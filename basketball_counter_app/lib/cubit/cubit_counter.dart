import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_state.dart';

class CubitController extends Cubit<CubitCounterState> {
  CubitController() : super(CubitIncreaseA());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void increment({required String type, required int points}){
    if(type=='A'){
      teamAPoints+=points;
      // to update changes in the cubit
      emit(CubitIncreaseA());
    }else {
      teamBPoints+=points;
      emit(CubitIncreaseB());

    }

  }
  void resetValue(){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CubitIncreaseA());
    emit(CubitIncreaseB());
  }

}
