import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/screens/cart_item_screen.dart';
import 'package:grocery_shop_app/screens/cart_screen.dart';
import 'package:grocery_shop_app/screens/empty_order_history.dart';
import 'package:grocery_shop_app/screens/nav_bars/favorite_screen.dart';
import 'package:grocery_shop_app/screens/nav_bars/home_screen.dart';
import 'package:grocery_shop_app/screens/nav_bars/profile_screen.dart';
import 'package:grocery_shop_app/widgets/badge.dart';
import 'package:provider/provider.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  late List<Map<String, dynamic>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'pages':HomeScreen(), 'title': 'Home'},

      {
        'pages': FavoriteScreen(),
        'title': 'Favorites',
      },
      {
        'pages': EmptyOrderHistory(),
        'title': 'History',
      },
      {
        'pages': ProfileScreen(),
        'title': 'Profile',
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['pages'],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton:   Consumer<Cart>(
        builder: (_, cart, ch) => Badge(
          value: cart.itemCount.toString(),
          child: ch,
        ),
        child: FloatingActionButton.small(

          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: (){
            Navigator.of(context).pushNamed(CartScreen.routeName);
          },
          child: Icon(Icons.shopping_bag_sharp),

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: _selectPage,
       unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        currentIndex: _selectedPageIndex,
        // backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),

            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(Icons.favorite_border),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.list_alt),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.account_circle_rounded),
            ),
          ]
      ),
    );
  }
}
