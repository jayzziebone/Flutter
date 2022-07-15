import 'package:flutter/material.dart';
import 'package:globo_fitness/shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      appBar: AppBar(
        title: const Text("Globo Fitness"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/beach.jpeg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            padding: const EdgeInsets.all(24),
            child:
                const Text(
                  'Commit to be fit, dare to be great with Globo Fitness',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Colors.grey,
                      )
                    ]
                  ),
                  ),
          ),
        ),
      ),
    );
  }
}

