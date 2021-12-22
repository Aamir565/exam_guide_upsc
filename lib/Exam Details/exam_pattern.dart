import 'package:exam_guide_upsc/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:exam_guide_upsc/content.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class patternPage extends StatefulWidget {
  @override
  State<patternPage> createState() => _patternPageState();
}

class _patternPageState extends State<patternPage> {
  @override
  late BannerAd _bottomBannerAd;

  bool _isBottomBannerAdLoaded = false;

  void _createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBottomBannerAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );
    _bottomBannerAd.load();
  }

  void initState() {
    super.initState();
    _createBottomBannerAd();
  }

  @override
  void dispose() {
    super.dispose();
    _bottomBannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _isBottomBannerAdLoaded
          ? Container(
              height: _bottomBannerAd.size.height.toDouble(),
              width: _bottomBannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bottomBannerAd),
            )
          : null,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Exam Pattern',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            headText2(
              name: 'Prelims Examination',
            ),
            Container(
              color: Colors.black26,
              width: double.infinity,
              child: DataTable(columns: [
                DataColumn(label: Text('Subject')),
                DataColumn(label: Text('Marks')),
                DataColumn(label: Text('Duration'))
              ], rows: [
                DataRow(cells: [
                  DataCell(Text('General Studies')),
                  DataCell(Text('200')),
                  DataCell(Text('2 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('Aptitude')),
                  DataCell(Text('200')),
                  DataCell(Text('2 Hrs'))
                ])
              ]),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'Note: The General Studies Paper II (Aptitude Test) will be a qualifying paper with minimum qualifying marks fixed at 33%.',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            headText2(name: 'Mains Examination'),
            Container(
              color: Colors.black26,
              width: double.infinity,
              child: DataTable(columns: [
                DataColumn(label: Text('Subject')),
                DataColumn(label: Text('Marks')),
                DataColumn(label: Text('Duration'))
              ], rows: [
                DataRow(cells: [
                  DataCell(Text('Indian Language (Compulsory)')),
                  DataCell(Text('300')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('English (Compulsory)')),
                  DataCell(Text('300')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('Essay')),
                  DataCell(Text('250')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('General Studies-I')),
                  DataCell(Text('250')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('General Studies-II')),
                  DataCell(Text('250')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('General Studies-II')),
                  DataCell(Text('250')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('General Studies-IV')),
                  DataCell(Text('250')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('Optional Subject Paper-I')),
                  DataCell(Text('250')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('Optional Subject Paper-II')),
                  DataCell(Text('250')),
                  DataCell(Text('3 Hrs'))
                ]),
                DataRow(cells: [
                  DataCell(Text('Sub Total (Written Test)')),
                  DataCell(Text('1750')),
                  DataCell(Text(''))
                ]),
              ]),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'Note: The Compulsory Language will be qualifying papers with minimum qualifying marks fixed at 25%',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Personality Test: 275 Marks',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, bottom: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Grand Total: 2025 Marks',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
