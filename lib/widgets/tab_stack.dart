import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:provider/provider.dart';
class TabStackCard extends StatelessWidget {
  const TabStackCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topSellData=Provider.of<DummyProducts>(context);
    final topSells = topSellData.items;
    return  GridView.builder(
      scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,

        childAspectRatio: 4/3,
     ),
    itemCount:topSells.length,
    itemBuilder: (ctx, index)=>ChangeNotifierProvider.value(
    value:topSells[index],
      child: Stack(
        children: [
          Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network('${topSells[index].imageUrl}',fit: BoxFit.cover,)),  )

          ,Positioned(
              bottom:35,
         right:16,
              child: Container(
                height: 50,
                width: 70,
                child: FittedBox(
                  child: Column(children: [
                    Card(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${topSells[index].name}',style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),),
                          Row(children: [
                            Icon(Icons.star,size:15,color: Colors.amber,),
                            Icon(Icons.star,size:15,color: Colors.amber,),
                            Icon(Icons.star,size:15,color: Colors.amber,),
                            Icon(Icons.star,size:15,color: Colors.amber,),
                            Icon(Icons.star_border,size:15,color: Colors.amber,)
                          ],),
                          Text('${topSells[index].price}',
                            style: TextStyle(color: Theme.of(context).primaryColor),

                          ),

                        ],),
                    ),)
                  ],),
                ),
              ))
        ],
      ),
    ));
  }
}
