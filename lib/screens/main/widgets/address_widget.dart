import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom painters/app_bar_custom_painter.dart';

class AddressWidget extends StatelessWidget {
  final String address;
  const AddressWidget({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
            painter: AppBarCustomPainter(),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 12, bottom: 12, right: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  const Icon(
                    FontAwesomeIcons.locationDot,
                    size: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    address,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ));
  }
}
