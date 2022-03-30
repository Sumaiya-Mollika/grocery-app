import 'package:flutter/material.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
class SwipeCard extends StatefulWidget {
  const SwipeCard({Key? key}) : super(key: key);

  @override
  _SwipeCardState createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(


        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
      ),
      margin: EdgeInsets.only(top:15),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10,vertical: 26),
        child: Column(children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total 3 items in cart',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Text('2000',style: TextStyle(color: Theme.of(context).primaryColor),),
          ],),

          SwipingButton(text:'Swipe to place order',onSwipeCallback: (){
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black54,
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 45),
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [

                        Container(
                          height:150,width: 150,
                          child: Image.network('https://renaissancelifetherapies.com/wp-content/uploads/2016/01/how-to-be-successful.png',
                            fit: BoxFit.cover,),),
                        Text('Order Successful',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                        Text('your Order id #123 Successfully placed',style: TextStyle(fontSize: 15,color: Colors.grey),),

                        ElevatedButton(onPressed: (){}, child:Text('Track my order')),
                        TextButton(onPressed: (){}, child: Text('Go Home'))
                      ],),
                    ),
                  );});
          } ,
            swipeButtonColor: Theme.of(context).primaryColor,height: 40,

            backgroundColor:Theme.of(context).colorScheme.secondary.withOpacity(0.5),)
        ],),
      ),);
  }
}
