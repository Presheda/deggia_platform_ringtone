import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deggia_platform_ringtone/deggia_platform_ringtone.dart';

void main() {
  const MethodChannel channel = MethodChannel('deggia_platform_ringtone');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DeggiaPlatformRingtone.platformVersion, '42');
  });
}
