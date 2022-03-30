import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/category_grid.dart';
class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('All Categories',style: TextStyle(color: Colors.black),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black))],
      ),
      body: CategoryGrid(""),
    );
  }

}
