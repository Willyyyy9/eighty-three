import 'package:eightythree/controller/cart_controller.dart';
import 'package:eightythree/screens/cart/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartController controller = Get.put(CartController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height:
            MediaQuery.of(context).size.height - AppBar().preferredSize.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Cart",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          GetBuilder<CartController>(builder: (controller) {
            return Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 10),
                shrinkWrap: true,
                itemCount: controller.cartProducts.length,
                itemBuilder: (context, index) {
                  return CartItem(cartProduct: controller.cartProducts[index]);
                },
              ),
            );
          }),
        ]),
      ),
    );
  }
}
