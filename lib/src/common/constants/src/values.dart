import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Gradient
LinearGradient bottomUpLinearGradient = const LinearGradient(
    colors: [
      Colors.black,
      Colors.black,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [.5, 1]);
LinearGradient upBottomLinearGradient = LinearGradient(
  colors: [
    Colors.black.withOpacity(.7),
    Colors.transparent,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: const [.0, .2],
);

var nonDecimalInputFormatter = [
  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
  FilteringTextInputFormatter.deny(RegExp('[\\-|\\ ]')),
  FilteringTextInputFormatter.digitsOnly
];
var decimalInputFormatter = [
  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
];
var stringInputFormatter = FilteringTextInputFormatter.deny(RegExp("[0-9||٠-٩]"));
const decimalKeyboardType = TextInputType.numberWithOptions(signed: false, decimal: true);
