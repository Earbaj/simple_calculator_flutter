import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_calculator/widget/calculator_widget.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int firstNumber = 0;
  int lastNumber = 0;
  String history = "";
  String textToDisplay = "";
  String res = "";
  String Operation = "";

  //Function wich callback returned with value and apply calculation with their operations
  void buttonCalick(String btnValue){
    print(btnValue);
    if(btnValue == "AC"){
      firstNumber = 0;
      lastNumber = 0;
      textToDisplay = "";
      res = "";
      history = "";
    }else if(btnValue == "C"){
      firstNumber = 0;
      lastNumber = 0;
      textToDisplay = "";
      res = "";
    }else if(btnValue == "+"||
        btnValue == "-" || btnValue == "*" || btnValue == "/"){
      firstNumber = int.parse(textToDisplay);
      res = "";
      Operation = btnValue;
      history = textToDisplay + btnValue;
    }else if(btnValue == "<="){
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    }else if(btnValue == "="){
      lastNumber = int.parse(textToDisplay);
      if(Operation == "+"){
        res = (firstNumber + lastNumber).toString();
        history = firstNumber.toString() + Operation + lastNumber.toString();
      }
      if(Operation == "-"){
        res = (firstNumber - lastNumber).toString();
        history = firstNumber.toString() + Operation + lastNumber.toString();
      }
      if(Operation == "*"){
        res = (firstNumber * lastNumber).toString();
        history = firstNumber.toString() + Operation + lastNumber.toString();
      }
      if(Operation == "/"){
        res = (firstNumber / lastNumber).toString();
        history = firstNumber.toString() + Operation + lastNumber.toString();
      }
    }else{
      res = int.parse(textToDisplay + btnValue).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      //Root of all design 
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Show result on display Container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(45.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomRight,
                      child: Text(history,
                        style: GoogleFonts.rubik(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomRight,
                      child: Text(textToDisplay,
                        style: GoogleFonts.rubik(
                          fontSize: 60.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Key Layout Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  digit: "AC",
                  color: Colors.green,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "C",
                  color: Colors.greenAccent,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "<=",
                  color: Colors.amber,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "/",
                  color: Colors.amber,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  digit: "9",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "8",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "7",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "*",
                  color: Colors.amber,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  digit: "6",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "5",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "4",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "-",
                  color: Colors.amber,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  digit: "3",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "2",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "1",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "+",
                  color: Colors.amber,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  digit: "+/-",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "00",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "0",
                  color: Colors.indigo.shade100,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
                CalculatorButton(
                  digit: "=",
                  color: Colors.amber,
                  textColor: Colors.black,
                  callback: buttonCalick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
