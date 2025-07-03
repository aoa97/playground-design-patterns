import 'package:xml/xml.dart';

import 'weather_third_party.dart';

class WeatherService {
  final WeatherThirdParty _weatherThirdParty;

  WeatherService({required WeatherThirdParty weatherThirdParty}) : _weatherThirdParty = weatherThirdParty;

  XmlElement getWeather(String city, String country) {
    return _weatherThirdParty.getWeather(city, country);
  }
}
