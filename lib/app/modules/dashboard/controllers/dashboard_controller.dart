import 'package:get/get.dart';

class DashboardController extends GetxController {
  var selectedIndex = 4;

  void changeSelectedIndex(int index){
    selectedIndex = index;
    update();
  }
}
