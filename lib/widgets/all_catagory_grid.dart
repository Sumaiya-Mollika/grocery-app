// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:grocery_shop_app/provider/product_provider.dart';
// class ViewAllCatagory extends StatelessWidget {
//   const ViewAllCatagory({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final productData=Provider.of<DummyProduct>(context);
//     return GridView.builder(
//         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 200,
//             childAspectRatio: 3 / 2,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 20),
//         itemCount: productData.length,
//         itemBuilder: (ctx, index) =>ChangeNotifierProvider.value(value:productData[index],child: Container(),)
//
//         });
//   }
// }
