import 'package:flutter/material.dart';
class DealCard extends StatelessWidget {
  const DealCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
          height: 20,
          width: 38,
          child: Text('All',style: TextStyle(color: Colors.white),textAlign:TextAlign.center,)),
    );
  }
}
