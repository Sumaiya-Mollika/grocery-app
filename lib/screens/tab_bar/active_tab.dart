import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/order_history_card.dart';
class ActiveTab extends StatelessWidget {
  const ActiveTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

       SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(

            children: [
              OrderHistoryCard(),
              OrderHistoryCard(),

            ],
          ),
        ),
      );

  }


}