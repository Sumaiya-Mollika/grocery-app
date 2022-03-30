import 'package:flutter/material.dart';
class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [Container(
              height: 200,width: 200,
              child: Image.network('http://bestirtech.com/blog/saved-search-2/')),
            Text('Empty Cart',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Looks like you haven’t added \n      any items yet.'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Lets Shop >',style: TextStyle(fontSize: 18),),
            ))
          ],
        ),
      ),
    );
  }
}