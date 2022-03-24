import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop_app/login_screen/reset_password.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Stack(
        children: [
          Expanded(
              child:  SvgPicture.asset("assets/images/katherine-chase-4MMK78S7eyk-unsplash 1.svg",)
          ),
          Positioned(child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(horizontal: 15,vertical:110),
            elevation: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 26),
              height: 260,
              width: 328,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Forget Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Please type your phone number or email below and we can help you reset password'),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Email or Phone Number',

                      suffixIcon:
                      Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
                  },child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text('SEND',style: TextStyle(fontSize: 18),),
                    ),
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
