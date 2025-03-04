// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

const SizedBox emptyWidget = SizedBox.shrink();

const double size_5 = 5.0;
const double size_10 = 10.0;
const double size_15 = 15.0;
const double size_20 = 20.0;
const double size_25 = 25.0;
const double size_30 = 30.0;
const double size_35 = 35.0;
const double size_50 = 50.0;
const double size_100 = 100.0;

const Widget width_5 = SizedBox(width: size_5);
const Widget width_10 = SizedBox(width: size_10);
const Widget width_15 = SizedBox(width: size_15);
const Widget width_20 = SizedBox(width: size_20);
const Widget width_25 = SizedBox(width: size_25);
const Widget width_30 = SizedBox(width: size_30);
const Widget width_35 = SizedBox(width: size_35);
const Widget width_50 = SizedBox(width: size_50);
const Widget width_100 = SizedBox(width: size_100);

const Widget height_5 = SizedBox(height: size_5);
const Widget height_10 = SizedBox(height: size_10);
const Widget height_15 = SizedBox(height: size_15);
const Widget height_20 = SizedBox(height: size_20);
const Widget height_25 = SizedBox(height: size_25);
const Widget height_30 = SizedBox(height: size_30);
const Widget height_35 = SizedBox(height: size_35);
const Widget height_50 = SizedBox(height: size_50);
const Widget height_100 = SizedBox(height: size_100);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
    {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
    {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}
