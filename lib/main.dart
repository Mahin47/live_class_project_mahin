// Button( ElevatedButton, IconButton, TextButton, GestureDetector,InkWell | TextField
// Container || RichText
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Hello World', home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Row(
            children: [
              //Icon(Icons.home,color: Colors.white),
              Text(
                'Home Screen',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          leading: Icon(Icons.home_filled, color: Colors.white),
          actions: [
            IconButton(
                onPressed: () {
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(
                  //         content: Text('You Have Been Pressed The Button'),
                  //       duration: Duration(seconds: 1),
                  //       backgroundColor: Colors.green
                  //     )
                  // );
                  showDialog(
                      context: context,
                      builder: (Builder) {
                        return AlertDialog(
                          title: Text('Confirmation'),
                          content: Text('Are You Want to Close this App?'),
                        );
                      });
                },
                icon: Icon(Icons.add)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      width: 2,
                      color: Colors.blueGrey
                    )
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  padding: EdgeInsets.all(15)
                ),
                  onPressed: () {
                    print('Button Pressed!');
                  },
                  child: Text('Press'))
            ],
          ),
        ));
  }
}
