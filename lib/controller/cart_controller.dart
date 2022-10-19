import 'package:eightythree/models/cart_product.dart';
import 'package:eightythree/models/deal.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<CartProduct> cartProducts = [
    CartProduct(
        id: "0",
        subtitle: "173 Grams",
        title: "Turkish Steak",
        quantity: 0,
        price: 25),
    CartProduct(
        id: "1",
        subtitle: "2 Servings",
        title: "Salmon",
        quantity: 0,
        price: 30),
    CartProduct(
        id: "2",
        subtitle: "1 Bottle",
        title: "Turkish Steak",
        quantity: 0,
        price: 25),
    CartProduct(
        id: "3", subtitle: "1 Bottle", title: "Cola", quantity: 0, price: 11)
  ];

  List<Deal> favouriteDeals = [];

  void handleFavouvites(Deal deal) {
    if (isFavourite(deal)) {
      favouriteDeals.remove(deal);
    } else {
      favouriteDeals.add(deal);
    }
    
  }

  bool isFavourite(Deal deal) {
    if (favouriteDeals.where((element) => element == deal).isEmpty) {
      
      return false;
    } else {
     
      return true;
    }
  }

  int cartSum = 0;

  void addQuantity(String id) {
    cartProducts.singleWhere((element) => element.id == id).quantity++;
    cartSum = cartProducts
        .map((e) => e.quantity * e.price)
        .toList()
        .fold(0, (previousValue, element) => previousValue + element);
    update();
  }

  void subtractQuantity(String id) {
    cartProducts.singleWhere((element) => element.id == id).quantity--;
    cartSum = cartProducts
        .map((e) => e.quantity * e.price)
        .toList()
        .fold(0, (previousValue, element) => previousValue + element);
    update();
  }
}
