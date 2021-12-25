import 'package:exam_guide_upsc/Exam%20Details/eligibility.dart';
import 'package:exam_guide_upsc/Exam%20Details/exam_pattern.dart';
import 'package:exam_guide_upsc/Exam%20Details/services_offered.dart';
import 'package:exam_guide_upsc/syllabus/mains.dart';
import 'package:exam_guide_upsc/syllabus/prelims.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_helper.dart';
import 'content.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image(image: AssetImage('images/banner.png')),
          headText(
            name: 'Exam Details',
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  child: clickAbleText(
                    name: 'Exam Pattern',
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => patternPage()));
                  },
                ),
                GestureDetector(
                  child: clickAbleText(
                    name: 'Eligibility',
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Eligibility()));
                  },
                ),
                GestureDetector(
                  child: clickAbleText(
                    name: 'Services Offered',
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => servicesOffered()));
                  },
                ),
              ],
            ),
          ),
          headText(
            name: 'Syllabus',
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  child: clickAbleText(
                    name: 'Prelims',
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Prelims_Syllabus()));
                  },
                ),
                GestureDetector(
                  child: clickAbleText(
                    name: 'Mains',
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mains_syllabus()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
