import 'package:beautiful_bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'card_child.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const Center(
                child: Text(
                  'BMI Calculator',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: CardChild(cardText: 'Male',),
                  ),
                  Expanded(
                    child: CardChild(cardText: 'Female',),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Height',
                      style: kCardTextStyle,
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: CardChild(cardText: 'Weight',),
                  ),
                  Expanded(
                    child: CardChild(cardText: 'Age',),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xFF4E78F0),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Calculate BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

