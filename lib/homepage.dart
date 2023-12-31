import 'package:flutter/material.dart';
import 'search.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 13),
            child: Row(
              children: [
                Text(
                  'Untuk Anda',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'Anime',
                  style: TextStyle(fontSize: 23, color: Colors.black),
                ),
                SizedBox(width: 8),
                Text(
                  'Film',
                  style: TextStyle(fontSize: 23, color: Colors.black),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 380,
                height: 260,
                color: Colors.blue[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Image(image: AssetImage('assets/bnh.png')),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 230,
                left: 0,
                right: 105,
                child: Center(
                  child: Text(
                    'The Villains Vs The Heroes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 13),
            child: Row(
              children: [
                Text(
                  'Terpopuler',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/onepiece.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("One Piece: STAMPEDE"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/naruto.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Naruto: Shippuden"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 380,
                height: 260,
                color: Colors.blue[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Image(image: AssetImage('assets/doraemon.png')),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 230,
                left: 15,
                right: 0,
                child: Center(
                  child: Text(
                    'Doraemon The Movie Petualangan Luar angkasa',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
              case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
              break;
          }
        },
      ),
    );
  }
}
