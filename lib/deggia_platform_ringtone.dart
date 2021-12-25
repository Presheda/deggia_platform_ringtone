
import 'dart:async';

import 'package:flutter/services.dart';

class DeggiaPlatformRingtone {
  static const MethodChannel _channel =
      const MethodChannel('deggia_platform_ringtone');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get androidRingTone async {
    final String ringtone = await _channel.invokeMethod('ringetone');
    return ringtone;
  }


}
