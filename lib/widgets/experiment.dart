import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/clip.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/provider/product_model.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;
class Experiment extends StatelessWidget {
  String ratting;
  Experiment(this.ratting);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return
      FittedBox(
        child: Card(
          elevation: 5,
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            height: 200,
            width: 145,
            child: GridTile(

              child: Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(children: [
                  Image.network('${product.imageUrl}',height: 70,width: 80,),
                  Text('${product.name}',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),

                  ratting=="ratting"?    Row(children: [
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star_border,color: Colors.amber,)
                  ],):
                  Text('${product.quantity}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ],),
              ),
              header: GridTileBar(
                leading:Stack(
                  children: [
                    ClipPath(
                      clipper: SimpleClipper(),
                      child: Container(
                        width: 65,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                          color:Theme.of(context).primaryColor,
                        ),

                      ),
                    ),
                    Positioned(
                      top: 2,
                      child: Transform.rotate(
                          angle: -math.pi /4,
                          child: Text('20%',style: TextStyle(fontSize: 16,color: Colors.white))),)

                  ],

                ),
                trailing:   IconButton(onPressed: (){},
                  icon: Icon(Icons.favorite_border,color: Theme.of(context).primaryColor,),),
              ),
              footer: GridTileBar(
                title: Text('${product.price}',style: TextStyle(color: Theme.of(context).primaryColor,),) ,
                trailing:  IconButton(onPressed: (){
                  cart.addItem(product.id, product.price, product.name);
                }, icon: Icon(Icons.shopping_cart,color: Theme.of(context).primaryColor,),
                ),

              ),
            ),
          ),
        ),
      );
  }
}
