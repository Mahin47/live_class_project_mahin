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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Row(
          children: [
            //Icon(Icons.home,color: Colors.white),
            Text('Home Screen',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        leading: Icon(Icons.home_filled,color: Colors.white),
        actions: [
          IconButton(onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(
            //         content: Text('You Have Been Pressed The Button'),
            //       duration: Duration(seconds: 1),
            //       backgroundColor: Colors.green
            //     )
            // );
            showDialog(context: context, builder: (Builder){
              return AlertDialog(
                title: Text('Confirmation'),
                content: Text('Are You Want to Close this App?'),
              );
            }
            );
          }, icon: Icon(Icons.add)),
        ],
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello Mahin!'),
            Text('Welcome to your Flutter World.'),
            Text('Lets Rock!'),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Greetings from '),
                Text('Mahin '),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range),
                        Text('Date of Birth:'),
                      ],
                    ),
                    Text('11-11-1990')
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }


}