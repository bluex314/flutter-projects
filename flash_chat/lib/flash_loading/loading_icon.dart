import 'package:flutter/cupertino.dart';
import 'package:progress_indicators/progress_indicators.dart';

Widget getIcon({bool glow = false}) {
  if (glow) {
    return GlowingProgressIndicator(
      child: Container(
        height: 200.0,
        child: Image.asset('images/logo.png'),
      ),
    );
  } else {
    return Container(
      height: 200.0,
      child: Image.asset('images/logo.png'),
    );
  }
}
