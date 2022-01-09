import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('I Am Poor'),
        ),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
        backgroundColor: Colors.yellow[100],
      ),
      body: Center(
        child: Image(
            image: AssetImage('images/unnamed.jpg'),
        ),
      ),
      backgroundColor: Colors.white,
    )
  ));


