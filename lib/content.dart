import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class headText extends StatelessWidget {
  headText({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 10.0, left: 10.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: GoogleFonts.halant(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class clickAbleText extends StatelessWidget {
  clickAbleText({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              name,
              style: GoogleFonts.ubuntu(
                  fontSize: 25.0, fontWeight: FontWeight.w500),
            ),
            Expanded(child: Container()),
            Icon(Icons.arrow_forward),
          ],
        ));
  }
}

class headText2 extends StatelessWidget {
  headText2({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 10.0, left: 10.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: GoogleFonts.halant(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
