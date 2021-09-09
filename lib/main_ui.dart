import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_calculator/widget/calculator_widget.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.indigo,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
                CalculatorButton(digit: "1",),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
