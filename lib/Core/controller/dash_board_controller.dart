import 'package:figma_to_flutter/export.dart';

class DashBoardController extends GetxController{
  var currentIndex = 0.obs;
  var currentDrwrIndex = 0.obs;
  void changeIndex(int index){
    currentIndex.value = index;
  }

  void changeDrawerIndex(int index){
    currentDrwrIndex.value = index;
  }
}