import 'package:eight_hr_assist/card/reusable_card.dart';
import 'package:eight_hr_assist/screens/hour_defined_jobs.dart';
import 'package:eight_hr_assist/screens/hour_undefined_jobs.dart';
import 'package:flutter/material.dart';

class JobTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          ReusableCard(
            text: 'Electrician',
            onPress: () {
              // if else based on hour define and undefined
              Navigator.pushNamed(context, HourDefinedJobs.id);
            },
          ),
          ReusableCard(
            text: 'Driver',
            onPress: () {
              Navigator.pushNamed(context, HourUndefinedJobs.id);
            },
          ),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
          ReusableCard(text: 'Electrician'),
        ],
      ),
    );
  }
}
