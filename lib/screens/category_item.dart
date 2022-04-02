import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/clip.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/provider/product_model.dart';
import 'dart:math' as math;
import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:provider/provider.dart';
class CategoryItem extends StatelessWidget {
  static const routeName = '/categoryItem';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final catagoryProduct =
    Provider.of<DummyProducts>(context, listen: false).findById(productId);

    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('${catagoryProduct.name}',style: TextStyle(color: Colors.black),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more,color: Theme.of(context).primaryColor))],
      ),
      body: Container(

        height: 500,
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search Product'),
            ),
      Card(
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
                Image.network('${catagoryProduct.imageUrl}',height: 70,width: 80,),
                Text('${catagoryProduct.name}',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                Text('${catagoryProduct.quantity}',style: TextStyle(color: Colors.black,fontSize: 12),),
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
              title: Text('${catagoryProduct.price}',style: TextStyle(color: Theme.of(context).primaryColor,),) ,
              trailing: IconButton(onPressed: (){
                //cart.addItem(product.id, product.price, product.name);
              },
                  icon: Icon(Icons.shopping_cart,color: Theme.of(context).primaryColor,)),

            ),
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}
