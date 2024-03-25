// amra kiki dekbo ajke: column | row| dialog |bottom sheet
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
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello Mahin!'),
            Text('Welcome to your Flutter World.'),
            Text('Lets Rock'),


            Row(
              children: [
                Text('Greetings from'),
                Text('Flutter'),
              ],
            )

          ],
        )
      ),
    );
  }


}