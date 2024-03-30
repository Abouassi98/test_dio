import 'package:flutter/material.dart';

abstract class AppStaticColors {
  static const Color primary = Color(0xFF413A70);
  static const Color primaryLight = Color(0xff7068a3);
  static const Color lightGray = Color(0xFFF5F5FA);
  static const Color grey = Color(0xFFE3E2EB);
  static const Color darkGrey = Color(0xFFC5C4CC);
  static const Color darkPrimary = Color(0xFF24203D);
  static const Color white = Color(0xffffffff);
  static const Color darkWhite = Color(0xFFD4D3DB);
  static const Color whiteWithOpacity = Color(0x14ffffff);
  static const Color black = Color(0xff000000);
  static const Color blackOpacity25 = Color(0x40000000);
  static const Color lightBlack = Color(0xff333333);
  static const Color focusedBorderColor = Color.fromRGBO(112, 104, 163, 1);
  static const Color fillColor = Color.fromRGBO(243, 246, 249, 0);
  static const Color borderColor = Color.fromRGBO(212, 211, 219, 1);
  static const Color placeHolderBaseColor = Color(0xFFE0E0E0);
  static const Color placeHolderHighlightColor = Color(0xFFF5F5F5);
  static const LinearGradient primaryIngredientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff413a70), Color(0xff121114)],
  );
  static const LinearGradient serviceCardIngredientColor = LinearGradient(
    begin: Alignment(0.57, -0.82),
    end: Alignment(-0.57, 0.82),
    colors: [Color(0xFF7068A2), Color(0xFF3B3566)],
  );
  static const LinearGradient visaCardIngredientColor = LinearGradient(
    begin: Alignment(0.57, -0.82),
    end: Alignment(-0.57, 0.82),
    colors: [
      Color(0xff3c3c3c),
      Color(0xff1e1e1e),
      // Color(0xffda3c2a),
      // Color(0xffb91123),
    ],
  );
  static const LinearGradient bannerIngredientColor = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [Color(0xff413a70), Color(0xff7068a3)],
  );
  static const List<Color> cardBgColor = [
    AppStaticColors.primary,
    AppStaticColors.black,
    AppStaticColors.orange,
  ];
  static const Color red = Color(0xffBD1E2E);
  static const Color orange = Color(0xffFD8D00);
  static const Color yellow = Color(0xffFDA900);
  static const Color pink = Color(0xffFAE6E8);

  static const Color lightOrange = Color(0xfffe9654);
  static const Color green = Color(0xff117D10);
  static const Color toastColor = Color(0xFFC11718);

  static const boxShadowBlack25 = [
    BoxShadow(color: blackOpacity25, blurRadius: 6, offset: Offset(0, 2)),
  ];
  static const boxShadowBlack25Reduced = [
    BoxShadow(color: blackOpacity25, blurRadius: 3, offset: Offset(0, 1)),
  ];
}
