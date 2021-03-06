import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/bundel_offer.dart';
import 'package:grocery_shop_app/widgets/deal_card.dart';
import 'package:grocery_shop_app/widgets/list_tile_card.dart';

class TopDealScreen extends StatefulWidget {
  const TopDealScreen({Key? key}) : super(key: key);

  @override
  _TopDealScreenState createState() => _TopDealScreenState();
}

class _TopDealScreenState extends State<TopDealScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Top Deals',style: TextStyle(color: Colors.black),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black))],
      ),
      body:
         Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(children: [Column(
            children: [
              Container(
                  height:30,child: DealCard()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bundle Offers',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  TextButton(onPressed: (){}, child: Text('View All',style: TextStyle(color: Theme.of(context).primaryColor),))
                ],),

              Container(
                height: 140,
                child: BundelOffer(""),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  TextButton(onPressed: (){}, child: Text('View All',style: TextStyle(color: Theme.of(context).primaryColor),))
                ],),
Container(
  height: 330,
  child:   CardListTile(),
),


            ],
          ),



            Positioned(
              bottom: 16,
              left: 80,
              right: 80,
              child: ElevatedButton(onPressed: (){},child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.shopping_bag_rounded,color: Colors.white,),
                  Text('4 Items in cart',style: TextStyle(color: Colors.white,fontSize: 14),),
                ],),
              ),),
            ),
          ],

          ),
        ),

    );
  }







}
