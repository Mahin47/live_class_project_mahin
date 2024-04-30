import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery',
          style: TextStyle(color: Colors.white ),),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)
          ),
        ],
        leading: Icon(Icons.arrow_back_ios_new),
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
                  MaterialPageRoute(builder: (context) => DetailsScreen(imagePath: 'images/statue.jpg', imageName: 'statue')),
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
                        image: AssetImage('images/statue.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('statue')
                ],
              ),
            ),
          ),

          Positioned(
            top: 230,
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

          Positioned(
            top: 230,
            left: 226,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(imagePath: 'images/itaza.jpg', imageName: 'itaza')),
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
                        image: AssetImage('images/itaza.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('itaza')
                ],
              ),
            ),
          ),

          Positioned(
            top: 450,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(imagePath: 'images/macupicu.jpg', imageName: 'macupicu')),
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
                        image: AssetImage('images/macupicu.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('macupicu')
                ],
              ),
            ),
          ),

          Positioned(
            top: 450,
            left: 226,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(imagePath: 'images/taj.jpg', imageName: 'taj')),
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
                        image: AssetImage('images/taj.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('taj')
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
          margin: EdgeInsets.only(top: 104, left: 1),
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