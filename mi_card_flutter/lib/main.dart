import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQHznQgh29qoZQ/profile-displayphoto-shrink_800_800/0/1516938079248?e=1663200000&v=beta&t=7eRsk9QKWnoX_k4KwwQ6Wfz954isS57tRKehNOK1Cr4'),
              ),
              const Text(
                  'Junior Lutula Diongono',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                  'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                width: 150.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+514-808-8783',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'junior.lutula@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'
                    ),
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
