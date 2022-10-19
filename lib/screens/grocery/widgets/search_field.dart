import 'package:flutter/material.dart';


class SearchField extends StatelessWidget {
  final TextEditingController searchEditingController;
  const SearchField({Key? key, required this.searchEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const Icon(Icons.search),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: TextFormField(
            controller: searchEditingController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search in thousands of products',
                hintStyle: TextStyle(fontSize: 12)),
          ),
        )
      ]),
    );
  }
}
