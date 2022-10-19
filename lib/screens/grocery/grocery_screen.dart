import 'package:eightythree/providers/json_provider.dart';
import 'package:eightythree/screens/grocery/widgets/address_section.dart';
import 'package:eightythree/screens/grocery/widgets/category_section.dart';
import 'package:eightythree/screens/grocery/widgets/deal_section.dart';
import 'package:eightythree/screens/grocery/widgets/mega_deal_section.dart';
import 'package:eightythree/screens/grocery/widgets/search_field.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:
            Provider.of<JsonProvider>(context, listen: false).readJSON(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  SearchField(searchEditingController: TextEditingController()),
                  const AddressSection(),
                  const CategorySection(),
                  const DealSection(),
                  const MegaDealSection()
                ]),
              ),
            );
          }
        });
  }
}
