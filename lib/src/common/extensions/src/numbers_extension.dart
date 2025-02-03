import 'package:flutter/material.dart';

extension CustomBorderRadius on num {
  BorderRadius borderRadius() {
    return BorderRadius.circular(toDouble());
  }

  BorderRadius topBorderRadius() {
    return BorderRadius.only(
      topLeft: Radius.circular(toDouble()),
      topRight: Radius.circular(toDouble()),
    );
  }
}

extension CustomPadding on num {
  EdgeInsets get allPadding {
    return EdgeInsets.all(toDouble());
  }

  EdgeInsets get halfSymmetricPadding {
    return EdgeInsets.symmetric(horizontal: toDouble() / 2, vertical: toDouble());
  }
}

var map = {
  '١': 1,
  '٢': 2,
  '٣': 3,
  '٤': 4,
  '٥': 5,
  '٦': 6,
  '٧': 7,
  '٨': 8,
  '٩': 9,
  '٠': 0,
};
