import 'dart:math';

import 'package:flutter/material.dart';

class BMICalculator {
  int height;
  int weight;
  double _bmi;
  Map<String, String> _bmiResults = {
    'OVERWEIGHT': 'You are overweight dude!. Do cardio and diet',
    'UNDERWEIGHT': 'You are underewight dude! Eat more.',
    'GOOD': 'You are good'
  };

  BMICalculator({this.height, this.weight}) {
    _calculateBmi();
  }

  void _calculateBmi() {
    _bmi = weight / pow((height / 100), 2);
    print(_bmi);
  }

  String getBmiAsString() {
    return _bmi.toStringAsFixed(1);
  }

  String getBmiResult() {
    if (_bmi >= 25) {
      return _bmiResults.keys.elementAt(0);
    } else if (_bmi > 18.5) {
      return _bmiResults.keys.elementAt(2);
    } else {
      return _bmiResults.keys.elementAt(1);
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return _bmiResults.values.elementAt(0);
    } else if (_bmi > 18.5) {
      return _bmiResults.values.elementAt(2);
    } else {
      return _bmiResults.values.elementAt(1);
    }
  }
}
