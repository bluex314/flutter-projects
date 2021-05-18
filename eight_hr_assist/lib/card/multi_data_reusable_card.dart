import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eight_hr_assist/constants.dart';

class MultiDataReusableCard extends StatelessWidget {
  MultiDataReusableCard(
      {this.onPress,
      this.bannerText,
      this.rating,
      this.hourDetails,
      this.hourRate});

  final Function onPress;
  final String bannerText;
  final String rating;
  final String hourDetails;
  final String hourRate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.fromLTRB(2.5, 2.5, 2.5, 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimaryLightColor,
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(2),
        elevation: 5,
        onPressed: onPress,
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    bannerText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(hourDetails),
                          Text('Rs.$hourRate per hour'),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.add_shopping_cart),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
