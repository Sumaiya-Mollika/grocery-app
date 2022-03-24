import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/product_model.dart';
//import 'package:grocery_shop_app/provider/product_provider.dart';
import 'package:grocery_shop_app/screens/category_item.dart';
//import 'package:grocery_shop_app/widgets/all_catagory_grid.dart';
//import 'package:provider/provider.dart';
class AllCategoryScreen extends StatefulWidget {
  const AllCategoryScreen({Key? key}) : super(key: key);

  @override
  _AllCategoryScreenState createState() => _AllCategoryScreenState();
}

class _AllCategoryScreenState extends State<AllCategoryScreen> {

  List<Product>dummyProduct=[];
  _AllCategoryScreenState(){
    dummyProduct.add( Product(id: 'p1', name: 'Product Name',price: 120, description: 'Product description',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),);
    dummyProduct.add( Product(id: 'p2', name: 'Product Name',price: 120, description: 'Product description',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),);

    dummyProduct.add( Product(id: 'p3', name: 'Product Name',price: 120, description: 'Product description',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),);

    dummyProduct.add( Product(id: 'p4', name: 'Product Name',price: 120, description: 'Product description',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),);

    dummyProduct.add( Product(id: 'p5', name: 'Product Name',price: 120, description: 'Product description',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),);

  }
  @override
  Widget build(BuildContext context) {
    // /final productData=Provider.of<DummyProduct>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('All Categories',style: TextStyle(color: Colors.black),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black))],
      ),
      body: GridView.builder(

        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10),
    itemCount: dummyProduct.length,
    itemBuilder: (ctx, index) {
          final list=dummyProduct[index];
          return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategoryItem(catagoryProduct:list,)));
      },
      child: Container(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(dummyProduct[index].imageUrl),
            radius: 40,
          ),
          Text(dummyProduct[index].name),
        ],
      ),
      ),
    );})


    );
  }
}
