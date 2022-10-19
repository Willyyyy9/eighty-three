import 'dart:convert';

import 'package:eightythree/models/category.dart';
import 'package:eightythree/models/deal.dart';
import 'package:eightythree/models/mega_deal.dart';
import 'package:flutter/cupertino.dart';

import '../models/address.dart';

class JsonProvider with ChangeNotifier {
  dynamic body;
  List<Address> addressList = [];
  List<Category> categoryList = [];
  List<Deal> dealList = [];
  List<MegaDeal> megaDealList = [];
  Future<void> readJSON(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString("assets/JSON/assets.json");
    body = await json.decode(data);
  }

  Future<void> getAddressList(BuildContext context) async {
    addressList = body['address'].map<Address>(Address.fromJson).toList();
  }

  Future<void> getCategoryList(BuildContext context) async {
    categoryList = body['category'].map<Category>(Category.fromJson).toList();
  }

  Future<void> getDealList(BuildContext context) async {
    dealList = body['deal'].map<Deal>(Deal.fromJson).toList();
  }

  Future<void> getMegaDealList(BuildContext context) async {
    
      megaDealList = body['megaDeal'].map<MegaDeal>(MegaDeal.fromJson).toList();
    
    
  }
}
