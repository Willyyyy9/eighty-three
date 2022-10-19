import 'package:eightythree/config/constants.dart';
import 'package:eightythree/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartFloatingButton extends StatelessWidget {
  CartFloatingButton({Key? key}) : super(key: key);
  final CartController controller = Get.put(CartController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Constants.secondaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              bottom: 5,
              right: 5,
              left: 5,
              child: Image.asset("assets/images/cart.png")),
          GetBuilder<CartController>(builder: (controller) {
            return Positioned.fill(
                right: 15,
                bottom: 10,
                child: Center(
                    child: Text(
                  "\$${controller.cartSum}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12),
                )));
          })
        ],
      ),
    );
  }
}
