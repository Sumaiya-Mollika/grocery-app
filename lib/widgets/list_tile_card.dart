import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:provider/provider.dart';
class CardListTile extends StatelessWidget {
  const CardListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularDealData=Provider.of<DummyProducts>(context);
    final popularProducts =popularDealData.items;
    return ListView.builder(
    itemCount:popularProducts.length,
      itemBuilder: (ctx, index)=>ChangeNotifierProvider.value(
          value:popularProducts[index] ,
      child: Card(
        elevation: 3,
        color: Colors.white70,
        child: ListTile(

          minVerticalPadding: 20,
          leading:  Image.network('${popularProducts[index].imageUrl}',height: 70,width: 80,),
          title:  Text('${popularProducts[index].name}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          subtitle: Text('${popularProducts[index].quantity}'),

          trailing: FittedBox(
            child: Column(

              children: [
                Text('${popularProducts[index].price}',style: TextStyle(color: Theme.of(context).primaryColor,),),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Theme.of(context).primaryColor,))
              ],
            ),
          ),
        ),
      ),)
    );
  }
}
