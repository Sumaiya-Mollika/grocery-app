import 'package:flutter/material.dart';
import 'package:grocery_shop_app/login_screen/sign_in.dart';
import 'package:grocery_shop_app/provider/cart_provider.dart';
import 'package:grocery_shop_app/provider/product_model.dart';
import 'package:grocery_shop_app/screens/cart_item_screen.dart';
import 'package:grocery_shop_app/screens/cart_screen.dart';
import 'package:grocery_shop_app/screens/category_item.dart';
// import 'package:grocery_shop_app/screens/favorite_screen.dart';
import 'package:grocery_shop_app/screens/nav_bars/tab_screen.dart';
import 'package:provider/provider.dart';
import 'package:grocery_shop_app/provider/product_provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(providers: [
        ChangeNotifierProvider.value(value: DummyProducts()),
        ChangeNotifierProvider.value(value: Cart()),
        ],
        child: MaterialApp(

        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
        primarySwatch: Colors.green,

          colorScheme: ColorScheme.fromSwatch(primarySwatch:
          Colors.green,).copyWith(secondary: Colors.lightGreen,)
          ),


        home:TabScreen(),
          routes: {
            CategoryItem.routeName: (ctx) => CategoryItem(),
            CartItemScreen.routeName: (ctx) => CartItemScreen(),
  },
    ),
      );
  }
}

