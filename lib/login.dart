import 'package:flutter/material.dart';
import 'create_akun.dart';
import 'homepage.dart';
import 'search.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Akun"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "email",
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            TextField(
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password",
                prefixIcon: const Icon(Icons.vpn_key),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAkun()),
                );
              },
              child: const Text(
                'Belum punya akun? Buat Akun',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search), 
              label: 'Search',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.blue), 
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
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              break;
            }
          },
        ),
      ),
    );
  }
}
