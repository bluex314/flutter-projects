import 'package:eight_hr_assist/card/bigCard.dart';
import 'package:eight_hr_assist/components/rounded_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Bills extends StatelessWidget {
  static String id = '/bills';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        color: kScaffoldColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BigCard(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            RoundCardSmall(
              cardText: 'Post Jobs for Hiring',
              cardColour: kPrimaryDarkColor,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
