import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
//import 'package:time_range/time_range.dart';
import 'package:grocery_shop_app/widgets/checkout_card.dart';
import 'package:time_range/time_range.dart';
class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);


  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  DateTime? _selectDate;
  void _presentDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectDate = pickedDate;
      });
    });
  }

  static const orange = Color(0xFFFE9A75);
  static const dark = Color(0xFF333A47);
  static const double leftPadding = 50;

  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 14, minute: 50),
    TimeOfDay(hour: 15, minute: 20),
  );
  TimeRangeResult? _timeRange;

  @override
  void initState() {
    super.initState();
    _timeRange = _defaultTimeRange;
  }

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
        title: Text('CheckOut',style: TextStyle(color: Colors.black),),

      ),
body: Column(children: [
  Text('Shipping to',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
  CheckOutCard(),
  CheckOutCard(),
  TextButton(onPressed: (){

  }, child: Text('Add New Address',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
  ),
  
  Text('Preferd Delivary time',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
  Row(
    children: [

      Card(
        margin: EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(


          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

          children: [
          Text('Date',style: TextStyle(color: Colors.grey),),
           Row(
          children: [
              Container(
                child: Text(
                  _selectDate == null
                      ? 'Choose date'
                      :' ${DateFormat.MMMEd().format(_selectDate!)}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
             IconButton(onPressed:  _presentDatePicker,icon: Icon(Icons.arrow_drop_down),),
            ],
           ),
    ],),
        ),
      ),

      Card(
        margin: EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(


          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Text('Time',style: TextStyle(color: Colors.grey),),
              Row(
                children: [
                  if (_timeRange != null)
                Text('$_timeRange'==null?'Choose Time':  ' ${_timeRange!.start.format(context)} - ${_timeRange!.end.format(context)}'),

                  IconButton(
                    onPressed:(){  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                         padding: EdgeInsets.symmetric(vertical: 20),
                          height: MediaQuery.of(context).size.height/4,
                          child: TimeRange(
                            fromTitle: Text(
                              'FROM',
                              style: TextStyle(
                                fontSize: 14,
                                color: dark,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            toTitle: Text(
                              'TO',
                              style: TextStyle(
                                fontSize: 14,
                                color: dark,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            titlePadding: leftPadding,
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: dark,
                            ),
                            activeTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.white,
                            ),
                            borderColor: dark,
                            activeBorderColor: dark,
                            backgroundColor: Colors.transparent,
                            activeBackgroundColor: Theme.of(context).colorScheme.primary,
                            firstTime: TimeOfDay(hour: 8, minute: 00),
                            lastTime: TimeOfDay(hour: 22, minute: 00),
                            initialRange: _timeRange,
                            timeStep: 10,
                            timeBlock: 30,
                            onRangeCompleted: (range) => setState(() => _timeRange = range),
                          ),
                        );
                      },
                    );},

                    icon: Icon(Icons.arrow_drop_down),),
                ],
              ),
            ],),
        ),
      ),


    ],
  ),

  Text('Payment Method',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
  Container(child: Column(children: [
    // ListTile(leading: ,)
  ],),)
],),
      
    );
  }


}
