// ignore_for_file: public_member_api_docs

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '{{name.snakeCase()}}_method_channel.dart';

abstract class {{name.pascalCase()}}Platform extends PlatformInterface {
  /// Constructs a {{name.pascalCase()}}Platform.
  {{name.pascalCase()}}Platform() : super(token: _token);

  static final Object _token = Object();

  static {{name.pascalCase()}}Platform _instance = MethodChannel{{name.pascalCase()}}();

  /// The default instance of [{{name.pascalCase()}}Platform] to use.
  ///
  /// Defaults to [MethodChannel{{name.pascalCase()}}].
  static {{name.pascalCase()}}Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [{{name.pascalCase()}}Platform] when
  /// they register themselves.
  static set instance(final {{name.pascalCase()}}Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
