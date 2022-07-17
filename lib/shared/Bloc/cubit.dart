import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasanat/shared/Bloc/states.dart';
import '../network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  int counter = 0;
  int nowCounter = 0;

  void changeCounter({int? fromShared}) {
    if (fromShared != null) {
      counter = fromShared;
      emit(AppChangeCounterState());
    } else {
      counter++;
      nowCounter++;
      emit(AppChangeCounterState());
      CacheHelper.setCounter('counter', counter).then((value) {
        emit(AppChangeCounterState());
      }).catchError((onError) {
        emit(AppChangeCounterErrorState());
      });
    }
  }

  void zeroCounter() {
    counter = 0;
    nowCounter = 0;
    emit(AppChangeCounterToZeroState());
  }

  void nowZeroCounter() {
    nowCounter = 0;
    emit(AppChangeCounterToZeroState());
  }

  int currentIndex = 0;

  void sayIndex(int index) {
    currentIndex = index;
    emit(AppChangeSayState());
  }

  List<Widget> screens = [];
  List<String> prays = [
    'Pray for the Prophet Muhammed',
    'Glory be to Allah\n praise be to Allah.',
    'No God except Allah.',
    'Your forgiveness, O Allah.',
  ];

  void say(int index) {}
  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(AppChangeModeState());
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean('isDark', isDark).then((value) {
        emit(AppChangeModeState());
      });
    }
  }

  void quickChangeAppMode() {
    isDark = !isDark;
    emit(AppChangeModeState());
  }
}
