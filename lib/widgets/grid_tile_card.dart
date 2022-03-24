import 'package:flutter/material.dart';
import 'dart:math' as math;
class GridTileCard extends StatelessWidget {
  const GridTileCard({Key? key}) : super(key: key);

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
            borderRadius: BorderRadius.circular(20)
        ),
        height: 200,
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
            leading:Container(
              margin: EdgeInsets.only(top: 12),
              height: 35.71,
              width: 65,

              child: Transform.rotate(
                  angle: -math.pi / 4,
                  child: Text('20%',style: TextStyle(fontSize: 18,color: Theme.of(context).primaryColor),textAlign: TextAlign.center,)),
            ),
            trailing:   IconButton(onPressed: (){},
              icon: Icon(Icons.favorite_border,color: Theme.of(context).primaryColor,),),
          ),
          footer: GridTileBar(
            title: Text('1000',style: TextStyle(color: Theme.of(context).primaryColor,),) ,
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Theme.of(context).primaryColor,)),

          ),
        ),
      ),
    );
  }
}
