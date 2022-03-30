import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:provider/provider.dart';
class DealOfDay extends StatelessWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dealOfData=Provider.of<DummyProducts>(context);
    final dealOfDay = dealOfData.items;
    return GridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,

      ),
    itemCount:dealOfDay.length,
    itemBuilder: (ctx, index)=>ChangeNotifierProvider.value(
    value: dealOfDay[index],
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network('${dealOfDay[index].imageUrl}',fit: BoxFit.cover,)),  )

          ,Positioned(
              bottom: 15,
              child: Container(

                width: 120,
                child: FittedBox(
                  child: Column(children: [
                    Row(children: [
                      Card(
                        margin:EdgeInsets.symmetric(vertical: 5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6,),
                          child: Column(
                            children: [Text('15',style:TextStyle(color: Theme.of(context).primaryColor),),
                              Text('D'),
                            ],
                          ),
                        ),),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6,),
                          child: Column(
                            children: [Text('15',style:TextStyle(color: Theme.of(context).primaryColor),),
                              Text('H'),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6,),
                          child: Column(
                            children: [Text('15',style:TextStyle(color: Theme.of(context).primaryColor),),
                              Text('M'),
                            ],
                          ),
                        ),
                      ),
                      Card(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6,),
                        child: Column(
                          children: [Text('15',style:TextStyle(color: Theme.of(context).primaryColor),),
                            Text('s'),
                          ],
                        ),
                      ),),
                    ],),
                    Card(child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${dealOfDay[index].name}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                        Row(children: [
                          Icon(Icons.star,size:15,color: Colors.amber,),
                          Icon(Icons.star,size:15,color: Colors.amber,),
                          Icon(Icons.star,size:15,color: Colors.amber,),
                          Icon(Icons.star,size:15,color: Colors.amber,),
                          Icon(Icons.star_border,size:15,color: Colors.amber,)
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '${dealOfDay[index].price}',
                                style: TextStyle(color: Theme.of(context).primaryColor),
                                children:<TextSpan>[
                                  TextSpan(text: '${dealOfDay[index].prePrice}', style: TextStyle(color: Colors.grey.shade800,decoration:TextDecoration.lineThrough)),

                                ],
                              ),
                            ),

                            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Theme.of(context).primaryColor,))
                          ],
                        )
                      ],),)
                  ],),
                ),
              ))
        ],
      ),
    ),
    );
  }
}
