import 'package:eightythree/providers/json_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'address_item.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<JsonProvider>(context, listen: false)
            .getAddressList(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
              height: MediaQuery.of(context).size.height * 0.1,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Provider.of<JsonProvider>(context, listen: false)
                    .addressList
                    .length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AddressItem(
                      address: Provider.of<JsonProvider>(context, listen: false)
                          .addressList[index]);
                },
              ),
            );
          }
        });
  }
}
