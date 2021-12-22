import 'package:exam_guide_upsc/ad_helper.dart';
import 'package:exam_guide_upsc/const/const.dart';
import 'package:exam_guide_upsc/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class servicesOffered extends StatefulWidget {
  const servicesOffered({Key? key}) : super(key: key);

  @override
  _servicesOfferedState createState() => _servicesOfferedState();
}

class _servicesOfferedState extends State<servicesOffered> {
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
        title: Text('Services Offered'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(10.0),
              child: HtmlWidget(
                services_Offered,
                enableCaching: true,
                isSelectable: true,
                renderMode: RenderMode.column,
                textStyle: GoogleFonts.ubuntu(fontSize: 22.0),
              ))),
    );
  }
}
