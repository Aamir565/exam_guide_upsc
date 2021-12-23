import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:exam_guide_upsc/const/const.dart';
import 'package:google_fonts/google_fonts.dart';

class mains_syllabus extends StatefulWidget {
  const mains_syllabus({Key? key}) : super(key: key);

  @override
  State<mains_syllabus> createState() => _mains_syllabusState();
}

class _mains_syllabusState extends State<mains_syllabus> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mains Syllabus',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: HtmlWidget(
            mainsSyllabus,
            enableCaching: true,
            isSelectable: true,
            renderMode: RenderMode.column,
            textStyle: GoogleFonts.ubuntu(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
