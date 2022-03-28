import 'package:flutter/material.dart';
class CheckOutCard extends StatelessWidget {
  const CheckOutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 4,
      shape: RoundedRectangleBorder(


        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(leading: Icon(Icons.circle,size:10,color: Theme.of(context).colorScheme.primary,),
      title: Text('Home'),
      subtitle: Text("excel it ai,new eskaton road,moghbazar,dhaka"),
      trailing: Icon(Icons.edit,size:15,color: Theme.of(context).colorScheme.primary,),
    ),);
  }
}
