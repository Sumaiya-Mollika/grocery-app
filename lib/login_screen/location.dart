import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/search_card.dart';
class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back_ios),),

      ),

body: Column(
  children: [
    const Text('Search for your location',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),

    SearchCard(),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [

        Divider(thickness: 3, color: Colors.grey,height: 10,
          indent: 20, endIndent: 0,),
        Text('OR',style: TextStyle(
            color: Colors.grey
        ),),
        Divider(thickness: 3, color: Colors.grey,height: 10,
          indent: 20, endIndent: 0,),
      ],),

    Row(children: [
     const Icon( Icons.location_searching_sharp),
      TextButton( child: const Text( 'Use Current Location'),onPressed: (){},),

    ],),
  ],
),
    ));
  }

}
