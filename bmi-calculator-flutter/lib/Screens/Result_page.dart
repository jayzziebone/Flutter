import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.interpretation, @required this.bmiResult, @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveColorCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                  style: kResultBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
