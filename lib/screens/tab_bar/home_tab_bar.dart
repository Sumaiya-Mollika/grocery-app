import 'package:flutter/material.dart';

import 'package:grocery_shop_app/widgets/tab_stack.dart';
class HomeTabBar extends StatelessWidget {
  const HomeTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: new Scaffold(

        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            child: new TabBar(
              labelColor: Theme.of(context).primaryColor,
             unselectedLabelColor: Colors.grey,
              tabs: [new Text("Top Selling"), new Text("Trending Products")],
            ),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            TabStackCard(),
            new Column(
              children: <Widget>[new Text("Cart Page")],
            )
          ],
        ),
      ),
    );
  }
}
