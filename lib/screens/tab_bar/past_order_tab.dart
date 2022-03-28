import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/order_history_card.dart';
class PastOrder extends StatelessWidget {
  const PastOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OrderHistoryCard(),
          OrderHistoryCard(),
          OrderHistoryCard(),
          OrderHistoryCard(),
        ],
      ),
    );
  }
}
