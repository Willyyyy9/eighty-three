import 'package:eightythree/providers/json_provider.dart';
import 'package:eightythree/screens/grocery/widgets/category_item.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Explore by Category",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All(36)",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ))
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder(
                future: Provider.of<JsonProvider>(context, listen: false)
                    .getCategoryList(context),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          Provider.of<JsonProvider>(listen: false, context)
                              .categoryList
                              .length,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                          category:
                              Provider.of<JsonProvider>(listen: false, context)
                                  .categoryList[index],
                        );
                      },
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
