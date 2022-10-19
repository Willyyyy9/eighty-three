import 'package:eightythree/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 75,
        height: 75,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: category.categoryColor),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        category.categoryTitle,
        style: const TextStyle(
            fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
      )
    ]);
  }
}
