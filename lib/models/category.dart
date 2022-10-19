import 'dart:ui';

import '../config/constants.dart';

class Category {
  final String categoryTitle;
  final Color categoryColor;

  Category({required this.categoryColor, required this.categoryTitle});

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

  static Category fromJson(json) => Category(
      categoryTitle: json[Constants.categoryTitle],
      categoryColor: hexToColor(json[Constants.categoryColor]));
}
