import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:provider/provider.dart';
class DealCard extends StatelessWidget {
  const DealCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dealCategoryData=Provider.of<DummyProducts>(context);
    final dealCategoryProducts =dealCategoryData.items;
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        childAspectRatio: 5/12,
      ),
    itemCount:dealCategoryProducts.length,
    itemBuilder: (ctx, index)=>ChangeNotifierProvider.value(
    value:dealCategoryProducts[index] ,
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: FittedBox(child: Text('${dealCategoryProducts[index].name}',style: TextStyle(color: Colors.white),textAlign:TextAlign.center,)),
      ),
    ),
    );
  }
}
