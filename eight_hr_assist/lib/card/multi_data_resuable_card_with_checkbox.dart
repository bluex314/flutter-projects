import 'package:eight_hr_assist/components/labeled_check_box.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MultiDataReusableCardWithCheckBox extends StatefulWidget {
  MultiDataReusableCardWithCheckBox({
    this.onPress,
    this.bannerText,
    this.rating,
    this.hourRate,
    this.multipleHourRate,
    this.for8hours,
    this.notCertainHours,
  });

  final Function onPress;
  final String bannerText;
  final String rating;
  final String hourRate;
  final String multipleHourRate;
  final String notCertainHours;
  final String for8hours;

  @override
  _MultiDataReusableCardWithCheckBoxState createState() =>
      _MultiDataReusableCardWithCheckBoxState();
}

class _MultiDataReusableCardWithCheckBoxState
    extends State<MultiDataReusableCardWithCheckBox> {
  @override
  Widget build(BuildContext context) {
    bool boxValue = false;
    return Container(
      height: 350,
      margin: EdgeInsets.fromLTRB(2.5, 2.5, 2.5, 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor,
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(2),
        elevation: 5,
        onPressed: widget.onPress,
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.bannerText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: boxValue,
                                  onChanged: (bool value) {
                                    setState(() {
                                      boxValue = value;
                                    });
                                  },
                                ),
                                Text('For one hour, Rs.${widget.hourRate}'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: boxValue,
                                  onChanged: (bool value) {
                                    setState(() {
                                      boxValue = value;
                                    });
                                  },
                                ),
                                Text(
                                    'For extra hours, Rs.${widget.multipleHourRate} per hour'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: boxValue,
                                  onChanged: (bool value) {
                                    setState(() {
                                      boxValue = value;
                                    });
                                  },
                                ),
                                Text(
                                    'For 8 hours, Rs.${widget.hourRate} per hour'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: boxValue,
                                  onChanged: (bool value) {
                                    setState(() {
                                      boxValue = value;
                                    });
                                  },
                                ),
                                Text(
                                    'For uncertain hours, Rs.${widget.hourRate} per hour'),
                              ],
                            ),
                          ),
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
