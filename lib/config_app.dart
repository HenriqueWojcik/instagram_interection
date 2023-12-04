import 'package:instagram_interection/core/enum/env.dart';

class ConfigApp {
  static bool configDone = false;

  static Future<void> onInit(Env env) async {
    if (configDone) return;

    configDone = true;
  }
}
