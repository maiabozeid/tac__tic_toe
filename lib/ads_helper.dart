import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';

class AdHelper {

  static bool _testMode = false;


  static String get bannerAdUnitId {
    if (_testMode == true) {
      return AdmobBanner.testAdUnitId;
    }
    else if (Platform.isAndroid) {
      return 'ca-app-pub-6943802748367016/8233224649';
    // } else if (Platform.isIOS) {
    //   return "<YOUR_IOS_BANNER_AD_UNIT_ID>";
    } else {
      throw new UnsupportedError('Unsupported Platform');
    }
  }

}