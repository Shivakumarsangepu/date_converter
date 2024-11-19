#ifndef FLUTTER_PLUGIN_DATE_CONVERTER_PLUGIN_H_
#define FLUTTER_PLUGIN_DATE_CONVERTER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace date_converter {

class DateConverterPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DateConverterPlugin();

  virtual ~DateConverterPlugin();

  // Disallow copy and assign.
  DateConverterPlugin(const DateConverterPlugin&) = delete;
  DateConverterPlugin& operator=(const DateConverterPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace date_converter

#endif  // FLUTTER_PLUGIN_DATE_CONVERTER_PLUGIN_H_
