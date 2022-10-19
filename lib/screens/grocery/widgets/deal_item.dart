import 'package:eightythree/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../models/deal.dart';

class DealItem extends StatefulWidget {
  final Deal deal;
  const DealItem({
    Key? key,
    required this.deal,
  }) : super(key: key);

  @override
  State<DealItem> createState() => _DealItemState();
}

class _DealItemState extends State<DealItem> {
  CartController controller = Get.put(CartController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: widget.deal.dealColor),
              ),
              GetBuilder<CartController>(builder: (controller) {
                return Positioned(
                  top: -5,
                  left: -5,
                  child: InkWell(
                    onTap: () {
                      controller.handleFavouvites(widget.deal);
                      setState(() {});
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        controller.isFavourite(widget.deal)
                            ? FontAwesomeIcons.solidHeart
                            : FontAwesomeIcons.heart,
                        color: controller.isFavourite(widget.deal)
                            ? Colors.red
                            : Colors.black,
                        size: 10,
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.deal.dealTitle,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
                Text(
                  "Peaces ${widget.deal.numberOfPieces}",
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      FontAwesomeIcons.locationDot,
                      size: 10,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.deal.locationTitle,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ ${widget.deal.price}",
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "\$ ${widget.deal.previousPrice}",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
              ])
        ],
      ),
    );
  }
}
