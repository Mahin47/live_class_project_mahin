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
        // child: Text('Hello World!, Welcome to App!',
        // textAlign: TextAlign.center,
        // style: TextStyle(
        //   fontSize: 24,
        //   fontWeight: FontWeight.bold,
        //   fontStyle: FontStyle.italic,
        //   backgroundColor: Colors.yellow
        // ),
        // ),
        //child: Image.network('https://www.pinterest.com/pin/773704411013971044/')
        child: Image.asset('images/wallpepar.jpeg'),
      ),
    );
  }


}