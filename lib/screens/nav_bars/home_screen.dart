import 'package:flutter/material.dart';
import 'package:grocery_shop_app/screens/all_category_screen.dart';
import 'package:grocery_shop_app/screens/tab_bar/home_2nd_tabbar.dart';
import 'package:grocery_shop_app/screens/tab_bar/home_tab_bar.dart';
import 'package:grocery_shop_app/widgets/bundel_offer.dart';
import 'package:grocery_shop_app/widgets/category_grid.dart';
import 'package:grocery_shop_app/widgets/deal_day.dart';
import 'package:grocery_shop_app/widgets/dropdown.dart';
import 'package:grocery_shop_app/widgets/image_slide.dart';
import 'package:grocery_shop_app/widgets/list_tile_card.dart';
import 'package:grocery_shop_app/widgets/search_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: Container(
          margin: EdgeInsets.only(bottom: 26,left: 10,right: 10),
          child: Column(children: [
            ListTile(
              leading:Icon(Icons.grid_view,color: Theme.of(context).primaryColor,),
              title: Text('Deliver to'),
              subtitle: CustomDropDown(),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.add_shopping_cart),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchCard(),
                  Icon(Icons.list,size:28,color: Theme.of(context).primaryColor,)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Categories',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            TextButton(onPressed: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllCategoryScreen()));
            }, child:
            Text('See All',style: TextStyle(color: Theme.of(context).primaryColor),))],),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: CategoryGrid("homepage"),
            ),
            Container(
                height:200,child: ImageSlider()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Bundle Offers',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                TextButton(onPressed: (){}, child: Text('View All',style: TextStyle(color: Theme.of(context).primaryColor),))],),

            Container(
              height: 150,
              child: BundelOffer(""),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Popular',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                TextButton(onPressed: (){}, child: Text('View All',style: TextStyle(color: Theme.of(context).primaryColor),))],),

            Container(
              height: 200,
              child: CardListTile(),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Daily Best Sells',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                TextButton(onPressed: (){}, child: Text('View All',style: TextStyle(color: Theme.of(context).primaryColor),))],),


            Container(
              height: 150,
              child: BundelOffer("ratting"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Deals Of The Day',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                TextButton(onPressed: (){}, child: Text('View all',style: TextStyle(color: Theme.of(context).primaryColor),))],),

Container(height:200,

child: DealOfDay(),
),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs1S41sxItw5tTSmpbDIuzWecEOi8HDHr8fg&usqp=CAU')),
            ),
            Container(
              height: 140,
              child:HomeTabBar(),
            ),
            Text('View all->',style: TextStyle(color: Theme.of(context).primaryColor),),
             Container(
      height: 140,
 
            child:Home2ndTabBar(),
    ),
    Text('View all->',style: TextStyle(color: Theme.of(context).primaryColor),),
          ],),
        ),
        ),
      ),
    );
  }


}
