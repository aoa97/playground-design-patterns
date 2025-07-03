import '../helpers.dart';
import 'weather_service.dart';
import 'weather_service_adapter.dart';

class WeatherServiceAdaptee implements WeatherServiceAdapter {
  final WeatherService _weatherService;

  WeatherServiceAdaptee({required WeatherService weatherService}) : _weatherService = weatherService;

  @override
  Map<String, dynamic> getWeather(int lat, int long) {
    final city = getCityOf(lat, long);
    final country = getCountryOf(lat, long);

    final weatherXML = _weatherService.getWeather(city, country);
    return xmlToMap(weatherXML);
  }
}
