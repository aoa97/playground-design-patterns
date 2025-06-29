import 'config_manager.dart';
import 'config_manager_builder.dart';

main() {
  final ConfigManager config = ConfigManagerBuilder()
      .setGraphicsQuality('High')
      .setSoundOptions('Stereo')
      .setControlPrefs('Gamepad')
      .build();

  print('Graphics Quality: ${config.toString()}');
}
