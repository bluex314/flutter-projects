import 'package:eight_hr_assist/constants.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  BigCard({this.jobs});

  // jobs will a list of job ids,
  // from which we can query job name, hours and price from database.
  // jobs also can be fetched from the state as we add jobs to the cart
  // that logic is currently not implemented in this program.
  // for now it will be just job names
  final List<String> jobs;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 350,
      margin: EdgeInsets.fromLTRB(2.5, 2.5, 2.5, 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jobs Selected For Hiring',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.add),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Fan Repair',
                                          ),
                                        ],
                                      ),
                                      Text('1 hour'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.add),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Switch Board Installation',
                                          ),
                                        ],
                                      ),
                                      Text('0.5 hour'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.add),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Mixi Repair',
                                          ),
                                        ],
                                      ),
                                      Text('1.5 hours'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.add),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Ac Installation',
                                          ),
                                        ],
                                      ),
                                      Text('3 hours'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Total hours: 6 hours *',
                      style: kLabelStyleSmall,
                    ),
                    Text(
                      'Total Amount: Rs.2500 *',
                      style: kLabelStyleSmall,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
