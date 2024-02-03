import 'package:get/get.dart';

class CountDown extends GetxController{

  RxInt roundsPlayed = 0.obs;

  int _x = 5;
  int _y = 5;

  int get value => _x;
  int get click => _y;

  void decrement(){
    _x --;
    _y --;
    update();
  }

  // @override
  // void onInit() {
  //   super.onInit();
  //   ever(roundsPlayed as RxInterface<int>, (int value) {
  //     if (value >= 5) {
  //       gameInProgress.value = false;
  //       startTimer();
  //     }
  //   });
  // }

}

