import 'package:eightythree/controller/cart_controller.dart';
import 'package:eightythree/models/cart_product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../config/constants.dart';

class CartItem extends StatelessWidget {
  final CartProduct cartProduct;
  final CartController controller = Get.put(CartController(), permanent: true);
  CartItem({Key? key, required this.cartProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Constants.secondaryColor),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartProduct.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                cartProduct.subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "\$ ${cartProduct.price * cartProduct.quantity}",
                style: const TextStyle(
                    color: Constants.secondaryColor, fontSize: 16),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  controller.subtractQuantity(cartProduct.id);
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: const Icon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GetBuilder<CartController>(builder: (controller) {
                return Text(
                  "${cartProduct.quantity}",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                );
              }),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  controller.addQuantity(cartProduct.id);
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
