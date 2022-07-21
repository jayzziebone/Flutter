import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I Am Poor"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Image(image: AssetImage("images/i_am_poor.jpg"),),
        ),
        backgroundColor: Colors.grey[400],
      ),
    );
  }
}
