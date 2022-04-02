import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/provider/product_model.dart';
import 'package:provider/provider.dart';
class AddCart extends StatelessWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return GridTileBar(
      title: Text('${product.price}',style: TextStyle(color: Theme.of(context).primaryColor,),) ,
      trailing: IconButton(onPressed: (){
        cart.addItem(product.id, product.price, product.name);
      }, icon: Icon(Icons.shopping_cart,color: Theme.of(context).primaryColor,)),

    );
  }
}
