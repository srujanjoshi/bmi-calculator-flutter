import 'dart:math';

import 'package:flutter/cupertino.dart';

enum BMI { Underweight, Overweight, Normal, Obese }

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  BMI _bmi;
  String getBMI() {
    double rawBmi = this.weight / pow(this.height / 100, 2);
    if (rawBmi >= 30) {
      _bmi = BMI.Obese;
    } else if (rawBmi >= 25) {
      _bmi = BMI.Overweight;
    } else if (rawBmi >= 18.5) {
      _bmi = BMI.Normal;
    } else {
      _bmi = BMI.Underweight;
    }
    return rawBmi.toStringAsPrecision(4);
  }

  String getResult() {
    if (_bmi == BMI.Underweight) {
      return "Underweight";
    } else if (_bmi == BMI.Normal) {
      return "Normal";
    } else if (_bmi == BMI.Overweight) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String getAdvice() {
    if (_bmi == BMI.Underweight) {
      return "You should try eating more (in a sustainable, healthy way).";
    } else if (_bmi == BMI.Normal) {
      return "Congratulations! Looks like your BMI is right where it should be.";
    } else if (_bmi == BMI.Overweight) {
      return "Maybe try cutting down on food? Also make sure to get enough exercise.";
    } else {
      return "You should definitely look into cutting down on food and getting exercise.";
    }
  }
}
