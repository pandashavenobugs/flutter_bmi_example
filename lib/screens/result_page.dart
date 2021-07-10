import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/constans.dart';
import 'package:bmi_calculator_app/components/resuable_card.dart';
import 'package:bmi_calculator_app/screens/calculator_brain.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _bmiResult;
    String _resultText;
    String _interpretation;
    final args = ModalRoute.of(context)!.settings.arguments as CalculatorBrain;
    _bmiResult = args.calculateBMI();
    _resultText = args.getResult();
    _interpretation = args.getInterpretation();

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    _bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    _interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
