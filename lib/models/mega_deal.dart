import '../config/constants.dart';

class MegaDeal {
  final String subtitle;
  final String title;
  final String price;
  final String previousPrice;
  final String comment;

  MegaDeal(
      {required this.comment,
      required this.previousPrice,
      required this.price,
      required this.subtitle,
      required this.title});

        static MegaDeal fromJson(json) => MegaDeal(
      subtitle: json[Constants.subtitle],
      title: json[Constants.title],
      price: json[Constants.price],
      previousPrice: json[Constants.previousPrice],
      comment: json[Constants.comment]);
}
