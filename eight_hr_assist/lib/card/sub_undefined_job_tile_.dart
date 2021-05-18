import 'package:flutter/material.dart';
import 'multi_data_resuable_card_with_checkbox.dart';

class SubUndefinedJobTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            MultiDataReusableCardWithCheckBox(
              bannerText: 'Driver',
              rating: '4.5',
              hourRate: '250',
              multipleHourRate: '200',
              for8hours: '150',
              notCertainHours: '200',
              onPress: () {
                // bills page
              },
            ),
          ],
        ),
      ),
    );
  }
}
