import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/provider/product_model.dart';
import 'package:grocery_shop_app/screens/cart_item_screen.dart';
import 'package:grocery_shop_app/screens/category_item.dart';
import 'package:provider/provider.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(CategoryItem.routeName,
            arguments:product.id);
      },

      child:   GridTile(
      footer: IconButton(
   onPressed: (){
     cart.addItem(product.id, product.price, product.name);
   },
   icon: Icon(Icons.add_shopping_cart),
 ),
        child:  Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(product.imageUrl),
              radius: 40,
            ),
            Text(product.name),
          ],
        ),
      ),
    );
  }
}
