import 'package:flutter/material.dart';
class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(
          vertical: 10,horizontal: 15
      ),
      color: Colors.white70,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
          ),
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          width:  MediaQuery.of(context).size.width,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sat, 15 jan, 2022',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),

                  Text('1000 >',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Theme.of(context).colorScheme.primary,),),


                ],),
              SizedBox(height: 8,),
              Text('Order #123456',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
              SizedBox(height: 8,),
              Row(

                children: [
                  Icon(Icons.shopping_bag_sharp,size: 10,),
                  SizedBox(width: 5,),

                  Text('Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Aliquam posuere donec pretium ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),),


                ],),
              SizedBox(height: 8,),
              Row(

                children: [
                  Icon(Icons.adjust,size: 10,color: Theme.of(context).colorScheme.secondary,),

                  SizedBox(width: 5,),
                  Container(child: Text('Delivaried at 1:30 pm ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Theme.of(context).colorScheme.secondary,),)),


                ],),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){}, child: Text('Ask Refound',style: TextStyle(
                        color: Colors.grey,fontWeight: FontWeight.w600
                    ),)),
                    VerticalDivider(
                      color: Colors.grey,
                      endIndent: 10,
                      indent: 5,
                      thickness: 1,
                    ),
                    TextButton(onPressed: (){}, child: Text('Reorder items',style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.w600
                    ),)),
                  ],),
              )
            ],
          )
      ),
    );
  }
}
