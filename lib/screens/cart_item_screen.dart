import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/widgets/cart_item.dart';
import 'package:provider/provider.dart';
class CartItemScreen extends StatelessWidget {
  static const routeName = '/cart-screen';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body:ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (ctx, i) => CartItems(
            id: cart.items.values.toList()[i].id,
            productId: cart.items.keys.toList()[i],
            price: cart.items.values.toList()[i].price,
            quantity: cart.items.values.toList()[i].quantity,
            name: cart.items.values.toList()[i].name,))
      //
      // Column(
      //   children: [
      //     Card(
      //       margin: EdgeInsets.all(10),
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(
      //                 'Total',
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                 ),
      //               ),
      //               // Spacer(),
      //               // Chip(
      //               //   label: Text('\$${cart.totalAmount.toStringAsFixed(2)}',
      //               //       style: TextStyle(color: Colors.white, fontSize: 18)),
      //               //   backgroundColor: Theme.of(context).colorScheme.primary,
      //               // ),
      //               // TextButton(
      //               //   onPressed: () {
      //               //     Provider.of<Order>(context, listen: false).addOrder(
      //               //         cart.items.values.toList(), cart.totalAmount);
      //               //     cart.clearCart();
      //               //   },
      //               //   child: Text(
      //               //     'Order Now',
      //               //     style: TextStyle(fontSize: 20),
      //               //   ),
      //               // )
      //             ]),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Expanded(
      //         child: ListView.builder(
      //             itemCount: cart.items.length,
      //             itemBuilder: (ctx, i) => CartItems(
      //                 id: cart.items.values.toList()[i].id,
      //                 productId: cart.items.keys.toList()[i],
      //                 price: cart.items.values.toList()[i].price,
      //                 quantity: cart.items.values.toList()[i].quantity,
      //                 name: cart.items.values.toList()[i].name,)
      //         )
      //     )
      //   ],
      // ),
    );
  }
}
