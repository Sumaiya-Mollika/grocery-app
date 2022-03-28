import 'package:flutter/material.dart';
class CartCard extends StatefulWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: TextStyle(color: Colors.grey)),
            Text('1200')
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount on Order',style: TextStyle(color: Colors.grey)),
              Text('50',style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Coupon Discount',style: TextStyle(color: Colors.grey)),
              Text('50',style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping fee',style: TextStyle(color: Colors.grey),),
              Text('60')
            ],
          ),

          Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total',style: TextStyle(fontWeight: FontWeight.bold)),
              Text('1550',style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
            ],
          ),
        ],
        ),
      ),
    );
  }
}
