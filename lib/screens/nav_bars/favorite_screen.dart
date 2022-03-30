import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/clip.dart';
import 'dart:math' as math;
import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final favoriteData=Provider.of<DummyProducts>(context);
    final favoriteProducts =favoriteData.items;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Favorite',style: TextStyle(color: Colors.black),),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:3/3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
    itemCount:favoriteProducts.length,
    itemBuilder: (ctx, index)=>ChangeNotifierProvider.value(
    value:favoriteProducts[index] ,
        child:Card(

          elevation: 5,
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

            ),
            height: 185,
            width: 145,
            child: GridTile(

              child: Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(children: [
                  Image.network('${favoriteProducts[index].imageUrl}',height: 70,width: 80,),
                  Text('${favoriteProducts[index].name}',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                  Text('${favoriteProducts[index].description}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ],),
              ),
              header: GridTileBar(
                leading:Stack(
                  children: [
                    ClipPath(
                      clipper: SimpleClipper(),
                      child: Container(
                        width: 85,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                          color:Theme.of(context).colorScheme.primary,
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
                  icon: Icon(Icons.cancel_presentation,color: Theme.of(context).colorScheme.primary,),),
              ),
              footer: GridTileBar(
                title: Text('${favoriteProducts[index].price}',style: TextStyle(color: Theme.of(context).colorScheme.primary,),) ,
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Theme.of(context).colorScheme.primary,)),

              ),
            ),
          ),
        ) ,

      ),
    ));
  }
}
