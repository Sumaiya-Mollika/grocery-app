import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:grocery_shop_app/screens/tab_bar/active_tab.dart';
import 'package:grocery_shop_app/screens/tab_bar/past_order_tab.dart';
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Order History',style: TextStyle(color: Colors.black),),

      ),
body:DefaultTabController(
  length: 2,
  child: Column(
    children: <Widget>[
      ButtonsTabBar(
      contentPadding: EdgeInsets.symmetric(horizontal: 55),
unselectedLabelStyle: TextStyle(
  color: Colors.grey
),
        backgroundColor: Theme.of(context).colorScheme.primary,
        tabs: [          Tab( text: "Active"),
          Tab(text: "Past Orders") ],
      ),
      Expanded(
        child: TabBarView(
          children:[
            ActiveTab(),
       PastOrder(),
        ],
        ),
      ),
    ],
  ),
)

    );
  }
}


