import 'package:intl/intl.dart';

import 'date_converter_platform_interface.dart';

class MethodChannelDateConverter extends DateConverterPlatform {
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
