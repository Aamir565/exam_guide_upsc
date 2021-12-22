import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-5762287373840951/8165007509";
    } else if (Platform.isIOS) {
      return "ca-app-pub-5762287373840951/8165007509";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
