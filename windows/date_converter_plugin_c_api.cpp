#include "include/date_converter/date_converter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "date_converter_plugin.h"

void DateConverterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  date_converter::DateConverterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
