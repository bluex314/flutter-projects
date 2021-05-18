import 'package:eight_hr_assist/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateAndTime extends StatefulWidget {
  static String id = '/dateTimePicker';
  @override
  _DateAndTimeState createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  DateTime dateTime = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  Future _selectDate(BuildContext context) async {
    DateTime datePicker = await showDatePicker(
      context: context,
      initialDatePickerMode: DatePickerMode.day,
      initialDate: dateTime,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: kPrimaryLightColor,
              onPrimary: Colors.white,
              surface: kPrimaryDarkColor,
              onSurface: Colors.black,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child,
        );
      },
    );
    if (datePicker != null) {
      setState(() {
        dateTime = datePicker;
      });
    }
  }

  Future _selectTime(BuildContext context) async {
    TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.light(
              primary: kPrimaryLightColor,
              //   onPrimary: Colors.white,
              //   surface: kPrimaryDarkColor,
              //   onSurface: Colors.black,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child,
        );
      },
    );
    if (timeOfDay != null) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String dateTimeString =
        '${dateTime.day}-${dateTime.month}-${dateTime.year}';
    String time = selectedTime.format(context);
    return Container(
      color: kScaffoldColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Date for Work: ',
                style: kSmallButtonLabelStyle,
              ),
              SizedBox(
                width: 37,
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
                  onPressed: () {
                    _selectDate(context);
                  },
                  child: Text(
                    dateTimeString,
                    style: kDateTimeLabelStyle,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Work Starting Time: ',
                style: kSmallButtonLabelStyle,
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
                  onPressed: () {
                    _selectTime(context);
                  },
                  child: Text(
                    time,
                    style: kDateTimeLabelStyle,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
