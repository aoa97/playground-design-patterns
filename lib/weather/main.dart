import 'package:xml/xml.dart';

import 'weather_service.dart';
import 'weather_service_adaptee.dart';
import 'weather_service_adapter.dart';
import 'weather_third_party.dart';

main() {
  final WeatherThirdParty weatherThirdParty = WeatherThirdParty();

  // Using the WeatherService to get weather data

  final WeatherService weatherService = WeatherService(weatherThirdParty: weatherThirdParty);

  final XmlElement weatherXML = weatherService.getWeather('Cairo', 'Egypt');

  print(weatherXML);

  // Using the WeatherAdaptee to adapt the WeatherService to a different interface

  final WeatherServiceAdapter weatherAdaptee = WeatherServiceAdaptee(weatherService: weatherService);

  final Map<String, dynamic> weatherJSON = weatherAdaptee.getWeather(30, 31);

  print(weatherJSON);
}
