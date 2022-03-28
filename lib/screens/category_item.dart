import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/product_model.dart';
import 'package:grocery_shop_app/widgets/grid_tile_card.dart';
class CategoryItem extends StatefulWidget {
  //const CategoryItem({Key? key}) : super(key: key);
final Product ?catagoryProduct;
CategoryItem({this.catagoryProduct});
  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('${widget.catagoryProduct!.name}',style: TextStyle(color: Colors.black),),
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
            GridTileCard(),
          ],
        ),
      ),
    );
  }
}
