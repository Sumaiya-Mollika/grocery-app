import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/favorit_card.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Favorite',style: TextStyle(color: Colors.black),),
      ),
      body: GridView(
        primary: false,
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  childAspectRatio: 3/4,
mainAxisSpacing: 8,
    crossAxisSpacing: 8,
),
        padding: const EdgeInsets.all(15),
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 10,
        // crossAxisCount: 2,
        children: <Widget>[
          FaviritCard(),
          FaviritCard(),
          FaviritCard(),
          FaviritCard(),
          FaviritCard(),
          FaviritCard(),
        ],
      ),
    );
  }
}
