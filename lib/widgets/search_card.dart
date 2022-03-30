import 'package:flutter/material.dart';
class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 6),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search)),

      Container(
        margin: EdgeInsets.only(right: 12),
        width: 240,
        child: TextField(decoration: InputDecoration(
        hintText: 'Address Search',
        ),),
      )
      ],),);
  }
}
