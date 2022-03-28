import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/product_model.dart';
import 'package:grocery_shop_app/screens/check_out_screen.dart';
import 'package:grocery_shop_app/widgets/cart_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<Product> product = [];
  _CartScreenState() {
    product.add(Product(
      quantity: 0,
        name: "Brocoli",
        description: '500gm',

   id:DateTime.now().toString() ,

        price: 100,
        imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU"));
    product.add(Product(
      quantity: 0,
        name: "Meggi",
        description: "8pack",
        id:DateTime.now().toString() ,
        price: 140,
        imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU"));

    product.add(Product(
      quantity: 0,
        name: "Mixed Vegitable",
        id:DateTime.now().toString() ,
     description: "1kg",
        price: 200,
        imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU"));
     }
    // int _counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Cart',style: TextStyle(color: Colors.black),),
        actions: [Text('3 items',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.w600),)],

      ),
      body: SingleChildScrollView(
       child: Column(children: [
    ListView.builder(
    shrinkWrap: true,
    itemCount: product.length,
    itemBuilder: (context, index) {
      final list = product[index];
      return Dismissible(
        key: ValueKey(product[index].id),
        background: Container(
          color: Theme.of(context).colorScheme.primary,

          child: Icon(
            Icons.delete,
            size: 40,
            color: Colors.white,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),

        ),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction) {
          return showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text('Are you sure?'),
                content: Text('Do you want to remove the item?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop(false);
                    },
                    child: Text('NO'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop(true);
                      },
                      child: Text('Yes'))
                ],
              ));
        },
        child: Card(
          margin:EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Container(
            margin:EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      height:70,width: 70,
                      child: Image.network('${product[index].imageUrl}',fit: BoxFit.cover,)),

                  Column(children: [
                    Text('${product[index].name}',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('${product[index].description}',style: TextStyle(fontSize: 12),),
                  ],),
                ],

              ),

                Column(

                  children: [
                    Container(
                      width:70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                product[index].quantity++;
                              });

                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(2)
                                ),
                                height:15,
                                width: 15,

                                child: Icon(Icons.add,color: Colors.black87,size: 15,)),
                          ),
                          Text('${product[index].quantity}'),

                          InkWell(
                            onTap: (){
                              setState(() {
                                if (product[index].quantity > 0)product[index].quantity--;
                              });
                            },
                            child: Container(
                                height:15,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(2)
                                ),
                                child: Icon(Icons.remove,color: Colors.black87,size: 15,)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${product[index].price}',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold),),
                    )
                  ],)
              ],
            ),
          ),),
      );
    }),
Card(
  margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
  child:
  ListTile(
    leading: Icon(Icons.mode_edit,color: Theme.of(context).colorScheme.primary,),
    title: TextField(
      decoration: InputDecoration(

        hintText: 'Enter your Promo code'
      ),
    ),
    trailing: Container(
        height:30,
        width:30,
        decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(6),
            color: Theme.of(context).colorScheme.primary),
        child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,)),
  ),),
         CartCard(),
         ElevatedButton(onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckOut()));
         }, child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 40),
           child: Text('Proceed to CheckOut'),
         ))
        ],)
      ),
    );
  }


}
