import 'package:bmi/bottom_button.dart';
import 'package:bmi/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiVal, required this.bmiAdvice, required this.bmiResult});
  final String bmiVal, bmiResult, bmiAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResult,
                      style: kResultTextGreen,
                    ),
                    Text(
                      bmiVal,
                      style: TextStyle(
                          fontSize: 90.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiAdvice,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          BottomButton(
              buttonTitle: 'Re-Calculate',
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
