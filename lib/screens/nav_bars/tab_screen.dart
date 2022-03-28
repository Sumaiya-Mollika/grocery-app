import 'package:flutter/material.dart';
import 'package:grocery_shop_app/login_screen/sign_in.dart';
import 'package:grocery_shop_app/screens/all_category_screen.dart';
import 'package:grocery_shop_app/screens/cart_screen.dart';
import 'package:grocery_shop_app/screens/nav_bars/favorite_screen.dart';
import 'package:grocery_shop_app/screens/nav_bars/history_screen.dart';
import 'package:grocery_shop_app/screens/nav_bars/profile_screen.dart';

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
      {'pages':SignInScreen(), 'title': 'Sign In'},

      {
        'pages': FavoriteScreen(),
        'title': 'Favorites',
      },
      {
        'pages': HistoryScreen(),
        'title': 'Favorites',
      },
      {
        'pages': ProfileScreen(),
        'title': 'Favorites',
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

      floatingActionButton: FloatingActionButton.small(

        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartScreen()));
        },
        child: Icon(Icons.shopping_bag_sharp),

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
              label: 'Sign In',
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
