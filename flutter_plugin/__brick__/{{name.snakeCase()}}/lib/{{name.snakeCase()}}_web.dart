// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

// ignore_for_file: public_member_api_docs

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import '{{name.snakeCase()}}_platform_interface.dart';

/// A web implementation of the {{name.pascalCase()}}Platform of the {{name.pascalCase()}} plugin.
class {{name.pascalCase()}}Web extends {{name.pascalCase()}}Platform {
  /// Constructs a {{name.pascalCase()}}Web
  {{name.pascalCase()}}Web();

  static void registerWith(final Registrar registrar) {
    {{name.pascalCase()}}Platform.instance = {{name.pascalCase()}}Web();
  }
}
