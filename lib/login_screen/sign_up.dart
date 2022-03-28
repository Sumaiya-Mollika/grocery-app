import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
import 'package:grocery_shop_app/widgets/pass_txt_field.dart';
//import 'package:flutter_svg/flutter_svg.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _errorMessage = '';


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Stack(children: [
      Container(
  height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child:  SvgPicture.asset("assets/images/katherine-chase-4MMK78S7eyk-unsplash 1.svg",)
      ),
      Positioned(
        top: 100,
        left: 20,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        child: Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
          ),
          height: 500,
          width: 328,

          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(

              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
            onChanged: (val){
              validateEmail(val);
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          PassTxtField (),
          PassTxtField (),
          Row(children: [
            IconButton(onPressed: (){}, icon:Icon( Icons.check_box_outline_blank),),
            Text('Remember me'),

          ],),

          ElevatedButton(onPressed: (){
            print('sign in');


          //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocationScreen()));
          },child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 69),
            child: Text('SIGN UP',style: TextStyle(fontSize: 18),),
          ),),
          Center(child:
          Row(children: [

            Text("Already have an account? "),
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('Sign In',style:TextStyle(color: Theme.of(context).primaryColor),),)

          ],),),


        ],),),),)
    ],

    ));
  }


  void validateEmail(String val) {
    if(val.isEmpty){
      setState(() {
        _errorMessage = "Email can not be empty";
      });

     showToastMessage(_errorMessage);
    }else if(!EmailValidator.validate(val, true)){
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
     showToastMessage(_errorMessage);
    }else{
      setState(() {

        _errorMessage = "";
      });
    showToastMessage(_errorMessage);
    }
  }
  void showToastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER, //where you want to show, top, bottom
        timeInSecForIosWeb: 1, //for iOS only
        backgroundColor: Theme.of(context).primaryColor, //background Color for message
        textColor: Colors.white, //message text color
        fontSize: 16.0 //message font size
    );
  }

}
