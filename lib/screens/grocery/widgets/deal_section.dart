import 'package:eightythree/providers/json_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'deal_item.dart';

class DealSection extends StatelessWidget {
  const DealSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      margin: const EdgeInsets.only(bottom: 16, left: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Deals of the day",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: FutureBuilder(
                future: Provider.of<JsonProvider>(context, listen: false)
                    .getDealList(context),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          Provider.of<JsonProvider>(context, listen: false)
                              .dealList
                              .length,
                      itemBuilder: (context, index) {
                        return DealItem(
                            deal: Provider.of<JsonProvider>(context,
                                    listen: false)
                                .dealList[index]);
                      },
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
