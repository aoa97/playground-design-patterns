import 'package:xml/xml.dart';

class WeatherThirdParty {
  XmlElement getWeather(String city, String country) {
    final xmlString = '''
  <weather>
    <location>
      <city>${city}</city>
      <country>${country}</country>
    </location>
    <forecast>
      <date>2025-07-03</date>
      <temperature unit="Celsius">25</temperature>
      <condition>Sunny</condition>
    </forecast>
  </weather>
  ''';
    return XmlDocument.parse(xmlString).rootElement;
  }
}
