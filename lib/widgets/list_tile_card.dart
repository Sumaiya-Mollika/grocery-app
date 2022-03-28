import 'package:flutter/material.dart';
class CardListTile extends StatelessWidget {
  const CardListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white70,
      child: ListTile(

        minVerticalPadding: 20,
        leading:  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',height: 70,width: 80,),
        title:  Text('Product Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        subtitle: Text('Quantity'),

        trailing: FittedBox(
          child: Column(
            
            children: [
              Text('1000',style: TextStyle(color: Theme.of(context).primaryColor,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Theme.of(context).primaryColor,))
            ],
          ),
        ),
      ),
    );
  }
}
