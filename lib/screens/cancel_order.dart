import 'package:flutter/material.dart';
class CancelOrder extends StatelessWidget {
  const CancelOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Cancel Order',style: TextStyle(color: Colors.black),),
        

      ),
      body:Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [Container(
                height: 200,width: 200,
                child: Image.network('http://bestirtech.com/blog/saved-search-2/')),
              Text('Order Cancellation',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Are you sure you want to \n send a cancellation request?'),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Cancel Order',style: TextStyle(fontSize: 18),),
              ))
            ],
          ),
        ),
      ),
    );
  }
}