import 'package:bmi_calculator/bmi_calculator_logic.dart';
import 'package:bmi_calculator/bmi_widgets/genderCard.dart';
import 'package:bmi_calculator/bmi_widgets/reusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/bmiEnum.dart';
import 'package:bmi_calculator/constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum gender;
  int height = 181;
  int weight = 60;
  int age = 30;

  void setWeight(OperationEnum operation) {
    if (operation == OperationEnum.minus) {
      if (weight > kMinWeight) {
        weight--;
      }
    }
    if (operation == OperationEnum.plus) {
      if (weight < kMaxWeight) {
        weight++;
      }
    }
    setState(() {
      weight = weight;
    });
  }

  void setAge(OperationEnum operation) {
    if (operation == OperationEnum.minus) {
      if (age > kMinAge) {
        age--;
      }
    }
    if (operation == OperationEnum.plus) {
      if (age < kMaxAge) {
        age++;
      }
    }
    setState(() {
      age = age;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = GenderEnum.male;
                      });
                    },
                    colour: (gender == GenderEnum.male)
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconCard(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                        colour: (gender == GenderEnum.male)
                            ? kActiveLabelColor
                            : kInactiveLabelColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = GenderEnum.female;
                      });
                    },
                    colour: (gender == GenderEnum.female)
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconCard(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                      colour: (gender == GenderEnum.female)
                          ? kActiveLabelColor
                          : kInactiveLabelColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kMeasurmentStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 70,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onClick: () {
                              setWeight(OperationEnum.minus);
                            },
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onClick: () {
                              setWeight(OperationEnum.plus);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "AGE",
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onClick: () {
                              setAge(OperationEnum.minus);
                            },
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onClick: () {
                              setAge(OperationEnum.plus);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: BMICalculator(height: height, weight: weight),
                );
              },
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kLargeLabel,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Icon _defaultIcon = Icon(Icons.add, color: Colors.black);
  final Function onClick;

  RoundIconButton({this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      fillColor: Color(0xFF4C4F5E),
      child: (icon != null) ? Icon(icon) : _defaultIcon,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
    );
  }
}
