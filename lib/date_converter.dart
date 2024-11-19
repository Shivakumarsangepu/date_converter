library date_converter;

import 'date_converter_platform_interface.dart';

class DateConverter {
  static String getConvertedTime(String? serverTime, String displayFormat) {
    return DateConverterPlatform.instance.getConvertedTime(serverTime, displayFormat);
  }
}
