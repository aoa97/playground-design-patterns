import 'config_manager_builder.dart';

class ConfigManager {
  final String? graphicsQuality;
  final String? soundOptions;
  final String? controlPrefs;

  ConfigManager(ConfigManagerBuilder builder)
      : graphicsQuality = builder.graphicsQuality,
        soundOptions = builder.soundOptions,
        controlPrefs = builder.controlPrefs;

  @override
  String toString() {
    return 'ConfigManager(graphicsQuality: $graphicsQuality, soundOptions: $soundOptions, controlPrefs: $controlPrefs)';
  }
}
