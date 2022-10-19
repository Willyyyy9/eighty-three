import 'package:eightythree/models/address.dart';
import 'package:flutter/material.dart';

class AddressItem extends StatelessWidget {
  final Address address;
  const AddressItem({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.075,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.1,
          width: MediaQuery.of(context).size.width * 0.1,
          decoration: BoxDecoration(
            color: Colors.red[100],
            border: Border.all(width: 0.1, color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              address.addressType,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
            Text(
              address.addressLineOne,
              style: const TextStyle(fontSize: 9),
            ),
            Text(
              address.addressLineTwo,
              style: const TextStyle(fontSize: 9),
            ),
          ],
        )
      ]),
    );
  }
}
