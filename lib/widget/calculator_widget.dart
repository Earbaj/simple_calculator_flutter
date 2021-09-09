import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String digit;
  const CalculatorButton({Key? key, required this.digit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.indigoAccent.shade100,
      child: SizedBox(
        height: 70,
        width: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          onPressed: () {},
          child: Text(
            digit,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}
