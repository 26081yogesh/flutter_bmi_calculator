// This is the brain of the app - It calculates the bmi....

import 'dart:math';

class BmiBrain {
  BmiBrain({required int height, required int weight}) {
    this.height = height;
    this.weight = weight;
  }

  late final int height;
  late final int weight;
  late double _bmi;

  // function calculating BMI value
  String calBmi() {
    _bmi = (weight / pow((height / 100), 2));           // BMI formula
    return _bmi.toStringAsFixed(1);
  }

  // function returning BMI category
  String bmiCategory() {
    if (_bmi >= 18.5 && _bmi < 24.9) {
      return "Healthy Weight";
    } else if (_bmi >= 25 && _bmi < 29.9) {
      return "Over Weight";
    } else if (_bmi >= 30) {
      return "Obese";
    } else {
      return "Under Weight";
    }
  }
}
