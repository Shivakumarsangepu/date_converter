import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'date_converter_method_channel.dart';

abstract class DateConverterPlatform extends PlatformInterface {
  DateConverterPlatform() : super(token: _token);

  static final Object _token = Object();

  static DateConverterPlatform _instance = MethodChannelDateConverter();

  static DateConverterPlatform get instance => _instance;

  static set instance(DateConverterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  String getConvertedTime(String? serverTime, String displayFormat) {
    throw UnimplementedError('getDisplayTime() has not been implemented.');
  }
}
