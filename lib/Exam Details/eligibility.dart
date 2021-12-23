import 'package:exam_guide_upsc/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';

class Eligibility extends StatefulWidget {
  const Eligibility({Key? key}) : super(key: key);

  @override
  State<Eligibility> createState() => _EligibilityState();
}

class _EligibilityState extends State<Eligibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eligibility',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: HtmlWidget(
            eligibility,
            enableCaching: true,
            isSelectable: true,
            renderMode: RenderMode.column,
            textStyle: GoogleFonts.ubuntu(
              fontSize: 22.0,
            ),
          ),
        ),
      ),
    );
  }
}
