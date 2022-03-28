import 'package:flutter/material.dart';
class PassTxtField extends StatefulWidget {
  const PassTxtField({Key? key}) : super(key: key);

  @override
  State<PassTxtField> createState() => _PassTxtFieldState();
}

class _PassTxtFieldState extends State<PassTxtField> {
bool isObsecure=true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure?true:false,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: Icon(Icons.lock_outline),
        suffixIcon:IconButton(
            onPressed: (){
              setState(() {
                isObsecure=!isObsecure;
              });
            },

            icon:  Icon(isObsecure?Icons.visibility_off: Icons.visibility)),
      ),
    );
  }
}
