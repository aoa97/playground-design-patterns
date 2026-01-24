void main() {
  final weatherStation = WeatherStation();

  final ui = UI(weatherStation);
  final logger = Logger(weatherStation);
  final alertSystem = AlertSystem(weatherStation);

  weatherStation.addObserver(ui);
  weatherStation.addObserver(logger);
  weatherStation.addObserver(alertSystem);

  // Create a stream that emits different weather data every 5 seconds [Mimic real-Time Data]
  Stream.periodic(
    Duration(seconds: 5),
    (count) => WeatherData(
      temperature: Temperature(20 + (count * 5) % 30.toDouble()),
      humidity: Humidity(30 + (count * 10) % 40),
      windSpeed: WindSpeed(10 + (count * 3) % 50),
      airPressure: AirPressure(990 + (count * 5) % 30),
      forecastSummary: ForecastSummary(
        ['Sunny', 'Cloudy', 'Rainy', 'Stormy'][count % 4],
      ),
    ),
  ).listen((weatherData) {
    weatherStation.onWeatherDataChanged(weatherData);
  });
}

class Temperature {
  final double value;

  Temperature(this.value);
}

class Humidity {
  final double value;

  Humidity(this.value);
}

class WindSpeed {
  final double value;

  WindSpeed(this.value);
}

class AirPressure {
  final double value;

  AirPressure(this.value);
}

class ForecastSummary {
  final String value;

  ForecastSummary(this.value);
}

class WeatherData {
  final Temperature temperature;
  final Humidity humidity;
  final WindSpeed windSpeed;
  final AirPressure airPressure;
  final ForecastSummary forecastSummary;

  WeatherData({
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.airPressure,
    required this.forecastSummary,
  });
}

// Abstract Observable(Subject)
abstract class Observable {
  List<Observer> get observers;

  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObservers();
}

// Concrete Observable(Subject)
class WeatherStation implements Observable {
  final List<Observer> _observers = [];

  WeatherData? _weatherData;

  onWeatherDataChanged(WeatherData temperature) {
    _weatherData = temperature;
    notifyObservers();
  }

  // Pull API
  Temperature get temperature => _weatherData!.temperature;
  Humidity get humidity => _weatherData!.humidity;
  WindSpeed get windSpeed => _weatherData!.windSpeed;
  AirPressure get airPressure => _weatherData!.airPressure;
  ForecastSummary get forecastSummary => _weatherData!.forecastSummary;

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers() {
    for (final observer in _observers) {
      observer.update();
    }
  }

  @override
  List<Observer> get observers => List.unmodifiable(_observers);
}

// Abstract Observer(Subscriber) [Pull Mechanism]
abstract class Observer {
  void update();
}

// Concrete Observers
class UI implements Observer {
  final WeatherStation station;

  UI(this.station);

  @override
  void update() {
    print('UI updated with temperature: ${station.temperature.value}°C');
  }
}

class Logger implements Observer {
  final WeatherStation station;

  Logger(this.station);

  @override
  void update() {
    print(
      'Logger recorded: '
      'Temp=${station.temperature.value}, '
      'Humidity=${station.humidity.value}',
    );
  }
}

class AlertSystem implements Observer {
  final WeatherStation station;

  AlertSystem(this.station);

  @override
  void update() {
    if (station.temperature.value > 35) {
      print('Alert! High temperature: ${station.temperature.value}°C');
    }
  }
}
