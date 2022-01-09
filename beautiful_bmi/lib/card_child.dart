import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constant.dart';

class CardChild extends StatelessWidget {
  final String? cardText;

  const CardChild({Key? key, this.cardText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            cardText.toString(),
            style: kCardTextStyle,
          ),
        ],
      ),
    );
  }
}
