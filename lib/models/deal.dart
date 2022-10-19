import 'dart:ui';

import '../config/constants.dart';

class Deal {
  final Color dealColor;
  final String dealTitle;
  final String numberOfPieces;
  final String locationTitle;
  final String price;
  final String previousPrice;

  Deal(
      {required this.dealColor,
      required this.dealTitle,
      required this.locationTitle,
      required this.numberOfPieces,
      required this.previousPrice,
      required this.price});

      static Color hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

      static Deal fromJson(json) => Deal(
      dealTitle: json[Constants.dealTitle],
      numberOfPieces: json[Constants.numberOfPieces],
      locationTitle: json[Constants.locationTitle],
      price: json[Constants.price],
      previousPrice: json[Constants.previousPrice],
      dealColor: hexToColor(json[Constants.dealColor]));
}
