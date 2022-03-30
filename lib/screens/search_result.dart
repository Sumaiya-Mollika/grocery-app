import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Search Result',style: TextStyle(color: Colors.black),),


      ),
      body:Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [Container(
                height: 200,width: 200,
                child: Image.network('http://bestirtech.com/blog/saved-search-2/')),
              Text('No result found',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Sorry the products you are looking for \n doesn’t exist or can’t be found '),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Search Again >',style: TextStyle(fontSize: 18),),
              ))
            ],
          ),
        ),
      ),
    );
  }
}