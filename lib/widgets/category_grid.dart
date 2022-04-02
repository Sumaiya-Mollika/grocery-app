import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/provider/product_model.dart';
import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:grocery_shop_app/screens/category_item.dart';
import 'package:grocery_shop_app/widgets/product_item.dart';
import 'package:provider/provider.dart';
class CategoryGrid extends StatefulWidget {
  //const CategoryGrid({Key? key,String? axis}) : super(key: key);
  CategoryGrid(String axis){
    this.axis=axis;
  }
  String? axis;
  @override
  _CategoryGridState createState() => _CategoryGridState();
}

class _CategoryGridState extends State<CategoryGrid> {

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Product>(context, listen: false);
    // final cart = Provider.of<Cart>(context, listen: false);
    final productData=Provider.of<DummyProducts>(context);
    final products = productData.items;
    return GridView.builder(
      shrinkWrap: true,
      scrollDirection: widget.axis=="homepage"?Axis.horizontal:Axis.vertical,

      gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
     maxCrossAxisExtent: 150,

          childAspectRatio: 3/ 3,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6),
      itemCount:products.length,
      itemBuilder: (ctx, index)=>ChangeNotifierProvider.value(
        value: products[index],
        child:ProductItem(),

//         GestureDetector(
//           onTap: (){
//             Navigator.of(context).pushNamed(CategoryItem.routeName,
//                 arguments:products[index].id);
//           },
//
//           child:   GridTile(
//
//             child:  Column(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(products[index].imageUrl),
//                   radius: 40,
//                 ),
//                 Text(products[index].name),
//               ],
//             ),
//           ),
//         ),
      ),
    );
  }
}
