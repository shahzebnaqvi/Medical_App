import 'package:get/get.dart';

class BmiController extends GetxController {
  var gender = 0.obs;
  var height = "".obs;
  var weight = 0.obs;
  var age = 0.obs;
  increment(var index) {
    print(index);
    if (index == "1") {
      weight++;
      print(weight);
      update();
    } else if (index == "2") {
      age++;
      print(age);
      update();
    }
  }

  decrement(var index) {
    if (index == "1") {
      if (weight >= 1) {
        weight--;
      }
      print(weight);
      update();
    } else if (index == "2") {
      if (age >= 1) {
        age--;
      }
      print(age);
      update();
    }
  }

  var bmilottiefile1 = 'assets/lottiefile/running-men.json';
  // var result = age.value / weight.value;
  // print(BmiController.age.value);
  var a;
  bmiresult() {
    var a = age.value / age.value;
    print(a);
    return a;
  }
}
