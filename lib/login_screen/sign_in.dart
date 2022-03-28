import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop_app/login_screen/sign_up.dart';
import 'package:grocery_shop_app/login_screen/location.dart';
import 'package:grocery_shop_app/login_screen/forget_password.dart';
import 'package:grocery_shop_app/screens/top_deal.dart';
import 'package:grocery_shop_app/widgets/pass_txt_field.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Stack(
      children: [
        //SvgPicture.asset("images/katherine-chase-4MMK78S7eyk-unsplash 1.svg",),
     Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,

         child: SvgPicture.asset("images/1647263186wet-paint-warning-sign.svg",fit: BoxFit.cover,),
        ),
        Positioned(
top: 100,
          left: 20,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          child: Container(
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
            ),
           height: 450,
            width: 328,

            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sign In',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                PassTxtField (),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(onPressed: (){}, icon:Icon( Icons.check_box_outline_blank),),
                      Text('Remember me'),

                    ],),
                    TextButton(onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
                    }, child: Text('Forget Password?',style:TextStyle(color: Colors.red),),

                    ),

                  ],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Divider(thickness: 3, color: Colors.grey,height: 10,
                      indent: 20, endIndent: 0,),
                    Text('OR',style: TextStyle(
                        color: Colors.grey
                    ),),
                    Divider(thickness: 3, color: Colors.grey,height: 10,
                      indent: 20, endIndent: 0,),
                  ],),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //
                // Image.asset("assets/images/Ellipse 1.png"),
                //
                //   ],),

                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TopDealScreen()));
                },child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 69),
                  child: Text('SIGN IN',style: TextStyle(fontSize: 18),),
                ),),
                Row(children: [

                  Text("Dont't have an account? "),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));

                  }, child: Text('Sign Up',style:TextStyle(color: Theme.of(context).primaryColor),),)

                ],),
              ],


            ),
          ),
        ),)
      ],

    ),);
  }
}
