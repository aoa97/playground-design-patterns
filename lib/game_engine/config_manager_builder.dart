import 'config_manager.dart';

class ConfigManagerBuilder {
  String? _graphicsQuality;
  String? _soundOptions;
  String? _controlPrefs;

  String? get graphicsQuality => _graphicsQuality;
  String? get soundOptions => _soundOptions;
  String? get controlPrefs => _controlPrefs;

  ConfigManagerBuilder setGraphicsQuality(String quality) {
    this._graphicsQuality = quality;
    return this;
  }

  ConfigManagerBuilder setSoundOptions(String options) {
    this._soundOptions = options;
    return this;
  }

  ConfigManagerBuilder setControlPrefs(String prefs) {
    this._controlPrefs = prefs;
    return this;
  }

  ConfigManager build() {
    return ConfigManager(this);
  }
}
