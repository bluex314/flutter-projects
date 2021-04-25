import 'package:bmi_calculator/bmi_calculator_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/bmi_widgets/reusableCard.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // extract arguments
    final BMICalculator bmiCalculator =
        ModalRoute.of(context).settings.arguments as BMICalculator;

    final bmiResult = bmiCalculator.getBmiResult();
    final bmiValue = bmiCalculator.getBmiAsString();
    final bmiDescription = bmiCalculator.getDescription();

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('RESULTS'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //card
              Expanded(
                flex: 6,
                child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        bmiResult,
                        style: kLargeLabel,
                      ),
                      Text(
                        bmiValue,
                        style: kSuperLargeLabel,
                      ),
                      Text(
                        bmiDescription,
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: kBottomContainerHeight,
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'RE-CALCULATE',
                      style: kLargeLabel,
                    ),
                  ),
                ),
              )
              //bottom container for recalculate
            ],
          )),
    );
  }
}
