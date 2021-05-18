import 'package:eight_hr_assist/components/rounded_button.dart';
import 'package:eight_hr_assist/screens/hire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eight_hr_assist/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreenBasic extends StatelessWidget {
  static String id = '/';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kScaffoldColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Always \n \t \t \t  Assisting you',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                "images/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(
                height: 20,
              ),
              RoundCard(
                cardText: 'Hire',
                cardColour: kPrimaryDarkColor,
                onPress: () {
                  Navigator.pushNamed(context, HirePage.id);
                },
              ),
              SizedBox(
                height: 20,
              ),
              RoundCard(
                cardText: 'Assist',
                cardColour: kPrimaryQueenColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
