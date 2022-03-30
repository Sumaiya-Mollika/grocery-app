import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/tab_stack.dart';



class Home2ndTabBar extends StatelessWidget {
  const Home2ndTabBar({Key? key}) : super(key: key);

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
              // unselectedLabelStyle: TextStyle(color: Theme.of(context).errorColor),
              // labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              tabs: [new Text("Recently Added"), new Text("Top Rated")],
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