// import 'package:flutter/services.dart';

// class DecimalTextInputFormatter extends TextInputFormatter {
//   DecimalTextInputFormatter(TargetPlatform platform) : _platform = platform;

//   final TargetPlatform _platform;

//   @override
//   TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
//     if (TargetPlatform.android == _platform) {
//       final regEx = RegExp(r'^\d{0,9\.?\d{0,6}');
//       final newString = regEx.stringMatch(newValue.text) ?? '';
//       return newString == newValue.text ? newValue : oldValue;
//     } else {
//       final regEx = RegExp(r'^\d{0,9}[\.,\,]?\d{0,6}');
//       var newString = regEx.stringMatch(newValue.text) ?? '';
//       newString = newString.replaceAll(RegExp(r'\,'), '.');
//       final editNewValue = newValue.copyWith(text: newValue.text.replaceAll(RegExp(r'\,'), '.'));
//       return newString == editNewValue.text ? editNewValue : oldValue;
//     }
//   }
// }
