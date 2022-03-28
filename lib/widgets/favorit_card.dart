import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:grocery_shop_app/model/clip.dart';
class FaviritCard extends StatelessWidget {
  const FaviritCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

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
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',height: 70,width: 80,),
              Text('Product Name',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
              Text('Product details',style: TextStyle(color: Colors.black,fontSize: 12),),
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
            title: Text('1000',style: TextStyle(color: Theme.of(context).colorScheme.primary,),) ,
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Theme.of(context).colorScheme.primary,)),

          ),
        ),
      ),
    );
  }
}

