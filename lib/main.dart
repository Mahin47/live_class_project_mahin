import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(imagePath: 'images/china.jpg', imageName: 'China')),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('images/china.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('China')
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 226,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(imagePath: 'images/Petra.jpg', imageName: 'Petra')),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('images/Petra.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Petra')
                ],
              ),
            ),
          ),

          Positioned(
            top: 318,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(imagePath: 'images/roman.jpg', imageName: 'Roman Empire')),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('images/roman.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Roman Empire')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String imagePath;
  final String imageName;

  DetailsScreen({required this.imagePath, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imageName), // Using the image name as the title
      ),
      body: Center(
        child: Container(
          width: 390,
          height: 325,
          margin: EdgeInsets.only(top: 104, left: 19),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GalleryScreen(),
  ));
}