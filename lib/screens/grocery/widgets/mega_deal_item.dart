import 'package:eightythree/models/mega_deal.dart';
import 'package:flutter/material.dart';

import '../../../config/constants.dart';

class MegaDealItem extends StatelessWidget {
  final MegaDeal megaDeal;
  const MegaDealItem({Key? key, required this.megaDeal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: MediaQuery.of(context).size.height * 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: Constants.offerColor, borderRadius: BorderRadius.circular(16)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.width * 0.25,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    megaDeal.subtitle,
                    style: const TextStyle(
                        height: 0.7,
                        color: Constants.secondaryTextColor,
                        fontSize: 12),
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                              megaDeal.title
                                  .substring(0, megaDeal.title.length - 2),
                              style: const TextStyle(
                                  height: 1.2,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Constants.darkTextColor)),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(" ${megaDeal.title[megaDeal.title.length - 1]}",
                              style: const TextStyle(
                                  height: 1.2,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Constants.darkTextColor)),
                        ],
                      ),
                      Positioned(
                        right: 20,
                        child: Text(megaDeal.title[megaDeal.title.length - 2],
                            style: const TextStyle(
                                height: 1.2,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Constants.secondaryColor)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "\$ ${megaDeal.price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Constants.secondaryColor,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "\$ ${megaDeal.previousPrice}",
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "* Available until 24 December 2020",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            )
          ],
        )
      ]),
    );
  }
}
