import 'package:flutter_test/flutter_test.dart';
import 'package:date_converter/date_converter.dart';
import 'package:date_converter/date_converter_platform_interface.dart';
import 'package:date_converter/date_converter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDateConverterPlatform
    with MockPlatformInterfaceMixin
    implements DateConverterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DateConverterPlatform initialPlatform = DateConverterPlatform.instance;

  test('$MethodChannelDateConverter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDateConverter>());
  });

  test('getPlatformVersion', () async {
    DateConverter dateConverterPlugin = DateConverter();
    MockDateConverterPlatform fakePlatform = MockDateConverterPlatform();
    DateConverterPlatform.instance = fakePlatform;

    expect(await dateConverterPlugin.getPlatformVersion(), '42');
  });
}
