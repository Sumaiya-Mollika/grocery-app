import 'package:flutter/material.dart';
class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool ?cash = false;
  bool ?bkash= false;
  bool ?dBBL= false;
  bool ?card = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      child: SingleChildScrollView(
        child: Column(children: [
          ListTile(leading:   Checkbox(
            checkColor: Colors.white,

            value: this.cash,
            onChanged: (bool ?value) {
              setState(() {
                this.cash = value;
              });
            },
          ),
            title: Text('Cash On Delivery',style: TextStyle(color: Theme.of(context).primaryColor),),
            trailing: InkWell(
              onTap: (){},
              child: Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(6)

                  ),

                  child: Center(child: Text('Add New',style: TextStyle(fontSize: 12,color: Colors.white,),))),
            ),
          ),
          ListTile(leading:  Checkbox(
            checkColor: Colors.white,

            value: this.bkash,
            onChanged: (bool ?value) {
              setState(() {
                this.bkash = value;
              });
            },
          ) ,
            title: Text('Bkash',style: TextStyle(color: Theme.of(context).primaryColor),),),
          ListTile(leading:  Checkbox(
            checkColor: Colors.white,

            value: this.dBBL,
            onChanged: (bool ?value) {
              setState(() {
                this.dBBL = value;
              });
            },
          ) ,
            title: Text('DBBL',style: TextStyle(color: Theme.of(context).primaryColor),),),
          ListTile(leading:  Checkbox(
            checkColor: Colors.white,

            value: this.card,
            onChanged: (bool ?value) {
              setState(() {
                this.card = value;
              });
            },
          ) ,
            title: Text('Credit or Debit',style: TextStyle(color: Theme.of(context).primaryColor),),),
        ],),
      ),);
  }
}
