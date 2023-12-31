import 'package:flutter/material.dart';
import 'login.dart';

class CreateAkun extends StatefulWidget {
  const CreateAkun({Key? key}) : super(key: key);

  @override
  _CreateAkunState createState() => _CreateAkunState();
}

class _CreateAkunState extends State<CreateAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Akun'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Konfirmasi Password',
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                   );
                },
                child: Text('Buat Akun'),
              ),
                    const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), 
                );
              },
              child: const Text(
                'Sudah punya akun? Login',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
