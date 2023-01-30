import 'package:bmicalc/constants.dart';
import 'package:bmicalc/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmicalc/components/bottom_button.dart';



class ResultsPage extends StatelessWidget {
  ResultsPage({required this.interpretation, required this.bmiResult, required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBottomContainerColour,
        title: Text(
            'BMI Calculator'
        ),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding:EdgeInsets.all(30.0),
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: ReusableCard(
              onPress: (){},
              colour: kActiveCardColour,
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style:kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ) ,

            ),
          ),
          BottomButton(
            buttonTitle:'RE-CALCULATE',
            onTap:(){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
