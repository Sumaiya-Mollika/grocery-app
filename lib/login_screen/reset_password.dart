import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop_app/login_screen/jump_login.dart';
import 'package:grocery_shop_app/widgets/pass_txt_field.dart';
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Stack(
          children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
                child:  SvgPicture.asset("assets/images/katherine-chase-4MMK78S7eyk-unsplash 1.svg",)
            ),
            Positioned(

              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              margin: EdgeInsets.symmetric(horizontal: 15,vertical:110),
              elevation: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                height: 300,
                width: 328,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Reset Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('you can type new password and confirm it below'),
                    ),
                    PassTxtField(),
                    SizedBox(height: 10,),
                    PassTxtField(),
                    SizedBox(height: 15,),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>JumpLoginScreen()));
                    },child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Text('Save Changes',style: TextStyle(fontSize: 18),),
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
