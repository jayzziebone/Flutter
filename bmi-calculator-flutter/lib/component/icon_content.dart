import 'package:flutter/material.dart';

class IconCardChild extends StatelessWidget {
  final IconData iconToDisplay;
  final String iconText;
  Color cardColor;

  IconCardChild({@required this.iconToDisplay, @required this.iconText, this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconToDisplay,
          size: 80.0,
          color: cardColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
            iconText,
            style: TextStyle(
              fontSize: 18.0,
              color: cardColor,
            ),
        ),
      ],
    );
  }

}
