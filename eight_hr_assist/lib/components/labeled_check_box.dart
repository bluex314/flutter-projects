import 'package:flutter/material.dart';

class LabelledCheckBox extends StatelessWidget {
  LabelledCheckBox({this.value, this.labelText, this.onChanged});
  final bool value;
  final String labelText;
  final Function onChanged;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged(!value),
      child: Row(
        children: [
          Checkbox(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              }),
          Text(labelText),
        ],
      ),
    );
  }
}
