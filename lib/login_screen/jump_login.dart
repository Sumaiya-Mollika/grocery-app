import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop_app/screens/all_category_screen.dart';
class JumpLoginScreen extends StatelessWidget {
  const JumpLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Stack(
          children: [
            Expanded(
                child:  SvgPicture.asset("assets/images/katherine-chase-4MMK78S7eyk-unsplash 1.svg",)
            ),
            Positioned(
              top: 90,
              left: 20,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              margin: EdgeInsets.symmetric(horizontal: 15,vertical:110),
              elevation: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                height:350,
                width: 328,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/image 1.svg"),

                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('You successfully reset your password. Now you are good to go'),
                    ),

                    SizedBox(height: 15,),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllCategoryScreen()));
                    },child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text('Jump into login',style: TextStyle(fontSize: 18),),
                    ),),
                  ],
                )
                ,),
            ),)
          ],

        )
    );
  }
}
