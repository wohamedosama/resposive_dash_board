import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: const Color(0XFF064061),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      color: const Color(0XFF4EB7F2),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: const Color(0XFF064061),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: const Color(0XFFFFFFFF),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0XFF064061),
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0XFF064061),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: const Color(0XFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0XFF4EB7F2),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: const Color(0XFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getRepsonsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0XFFFFFFFF),
    );
  }
}

double getRepsonsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double respositveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return respositveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // ! var dispatcher = PlatformDispatcher.instance;
  // ! var physical = dispatcher.views.first.physicalSize.width;
  // ! var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // ! double width = physical / devicePixelRatio;
  double width = MediaQuery.of(context).size.width;
  if (width < SizeConfig.tablet) {
    return width / 900;
  } else if (width < SizeConfig.desktop) {
    return width / 1200;
  } else {
    return width / 1600;
  }
}
