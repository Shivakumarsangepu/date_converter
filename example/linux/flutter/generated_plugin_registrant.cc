//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <date_converter/date_converter_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) date_converter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DateConverterPlugin");
  date_converter_plugin_register_with_registrar(date_converter_registrar);
}
