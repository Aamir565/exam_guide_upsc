import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:exam_guide_upsc/const/const.dart';
import 'package:google_fonts/google_fonts.dart';

class Prelims_Syllabus extends StatefulWidget {
  const Prelims_Syllabus({Key? key}) : super(key: key);

  @override
  _Prelims_SyllabusState createState() => _Prelims_SyllabusState();
}

class _Prelims_SyllabusState extends State<Prelims_Syllabus> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prelims Syllabus',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: HtmlWidget(
            preSyllabus,
            enableCaching: true,
            isSelectable: true,
            renderMode: RenderMode.column,
            textStyle: GoogleFonts.ubuntu(fontSize: 22.0),
          ),
        ),
      ),
    );
  }
}
