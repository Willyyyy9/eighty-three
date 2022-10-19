import '../config/constants.dart';

class Address {
  final String addressType;
  final String addressLineOne;
  final String addressLineTwo;

  Address(
      {required this.addressLineOne,
      required this.addressLineTwo,
      required this.addressType});

  static Address fromJson(json) => Address(
      addressLineOne: json[Constants.addressLineOne],
      addressLineTwo: json[Constants.addressLineTwo],
      addressType: json[Constants.addressType]);
}
