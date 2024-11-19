import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:intl/intl.dart';

import 'date_converter_platform_interface.dart';

/// The web implementation of the DateConverter plugin.
class DateConverterWeb extends DateConverterPlatform {
  static void registerWith(Registrar registrar) {
    DateConverterPlatform.instance = DateConverterWeb();
  }

  @override
  String getConvertedTime(String? serverTime, String displayFormat) {
    final format = DateFormat("yyyy-MM-dd'T'HH:mm:ss");

    if (serverTime != null && serverTime.length > 23) {
      try {
        DateTime date = format.parse(serverTime.substring(0, 23));
        final displayFormatter = DateFormat(displayFormat);
        return displayFormatter.format(date);
      } catch (e) {
        return "Invalid Time";
      }
    } else {
      return "No Time";
    }
  }
}
