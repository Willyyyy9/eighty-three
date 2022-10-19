import 'package:eightythree/providers/json_provider.dart';
import 'package:eightythree/screens/grocery/widgets/mega_deal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MegaDealSection extends StatelessWidget {
  const MegaDealSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<JsonProvider>(context, listen: false)
            .getMegaDealList(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.builder(
                itemCount: Provider.of<JsonProvider>(context, listen: false)
                    .megaDealList
                    .length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MegaDealItem(
                    megaDeal: Provider.of<JsonProvider>(context, listen: false)
                        .megaDealList[index],
                  );
                },
              ),
            );
          }
        });
  }
}
