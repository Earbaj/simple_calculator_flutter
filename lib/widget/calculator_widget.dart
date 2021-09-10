import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String digit;
  final Color color;
  final Color textColor;
  final Function callback;
  const CalculatorButton({Key? key,
    required this.digit,
    required this.color,
    required this.textColor,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: color,
      child: SizedBox(
        height: 60,
        width: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          onPressed: () {
            callback(digit);
          },
          child: Text(
            digit,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: 24.0,),
            ),
          ),
          textColor: textColor,
        ),
      ),
    );
  }
}
