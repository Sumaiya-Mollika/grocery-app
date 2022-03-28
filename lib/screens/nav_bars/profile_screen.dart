import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Profile',style: TextStyle(color: Colors.black),),

      ),
      body:SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Column(
              children: [Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                  ),
                  Positioned(
right:3,
                      bottom: 2,
                      child: CircleAvatar(
                          radius: 10,

                          backgroundColor:  Theme.of(context).colorScheme.primary,
                          child: Center(child: IconButton(onPressed: (){},icon: Icon(Icons.camera_alt,color:Colors.white,size: 10,),))))
                ],
              ),
                Text('Hello,Welcome to Grocery!',style: TextStyle(color: Colors.black87,fontSize: 18),),
                ElevatedButton(onPressed: (){}, child: Text('Sign In / Sign Up')),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                    height: 50,
                    width: 60,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('0',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Orders',style: TextStyle(color: Colors.grey),),
                    ],),
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('0',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Saved',style: TextStyle(color: Colors.grey),),
                      ],),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    width: 60,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('0',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Spend',style: TextStyle(color: Colors.grey),),
                      ],),
                  ),
                ],),

                Card(
                  child: Column(
                    children: [
                      ListTile(

                        leading: Icon(Icons.email_outlined,color: Theme.of(context).colorScheme.secondary,),
                        title: Text('Email',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                        trailing: Icon(Icons.edit,color: Theme.of(context).colorScheme.secondary,),
                        subtitle: Text('loremipsum@gmail.com'),
                        minVerticalPadding: 10,
                      ),
                      ListTile(

                        leading: Icon(Icons.circle,color: Theme.of(context).colorScheme.secondary,),
                        title: Text('Address',style: TextStyle(color: Theme.of(context).colorScheme.primary),),

                        subtitle: Text('Mogbazar,new Eskaton,Ramna'),
                        minVerticalPadding: 10,
                      ),
                      ListTile(

                        leading: Icon(Icons.phone,color: Theme.of(context).colorScheme.secondary,),
                        title: Text('Phone Number',style: TextStyle(color: Theme.of(context).colorScheme.primary),),

                        subtitle: Text('01xxxxxxxxx'),
                        minVerticalPadding: 10,
                      ),
                    ],
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(

                    leading: Icon(Icons.payment,color: Theme.of(context).colorScheme.secondary,),
                    title: Text('Select Default Payment Card'),
                    trailing: Icon(Icons.arrow_forward_ios),),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(

                    leading: Icon(Icons.logout,color: Theme.of(context).colorScheme.secondary,),
                  title: Text('Log Out'),
                  trailing: Icon(Icons.arrow_forward_ios),),
                ),
              ],
            ),
          ),
      ),
   
    );
  }
}
