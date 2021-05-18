import 'package:flutter/material.dart';

import '../constants.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Select Location: ',
          style: kSmallButtonLabelStyle,
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(7),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Kuzhur',
              style: kDateTimeLabelStyle,
            ),
          ),
        ),
      ],
    );
  }
}
