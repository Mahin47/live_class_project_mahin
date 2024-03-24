import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World',
        home: Home()
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:
      Center(
        child:
        // Text('Hello World!, Welcome to App!, Right now we are learing. Help me Allah!,'
        //     'In Sha Allah',
        // textAlign: TextAlign.center,
        // maxLines: 2,
        // style: TextStyle(
        //   overflow: TextOverflow.ellipsis,
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        //   fontStyle: FontStyle.italic,
        //   backgroundColor: Colors.yellowAccent
        // ),
        // ),
        //child: Image.network('https://www.pinterest.com/pin/773704411013971044/')
      //  child: Image.asset('images/wallpepar.jpeg'),
        Icon(Icons.android)
      ),
    );
  }


}