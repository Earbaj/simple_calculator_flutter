import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.indigoAccent.shade100,
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      onPressed: (){},
                      child: Text("1",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 24.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
