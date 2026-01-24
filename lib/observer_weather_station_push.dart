main() {
  final weatherStation = WeatherStation();

  final ui = UI();
  final logger = Logger();
  final alertSystem = AlertSystem();

  weatherStation.addObserver(ui);
  weatherStation
    ..addObserver(logger)
    ..removeObserver(logger);
  weatherStation.addObserver(alertSystem);

  weatherStation.onTemperatureChange(Temperature(value: 40.0));
}

class Temperature {
  final double value;

  Temperature({required this.value});
}

// Abstract Observable(Subject)
abstract class Observable<T> {
  List<Observer<T>> get observers;

  void addObserver(Observer<T> observer);

  void removeObserver(Observer<T> observer);

  void notifyObservers(T data);
}

// Concrete Observable(Subject)
class WeatherStation implements Observable<Temperature> {
  final List<Observer<Temperature>> _observers = [];

  onTemperatureChange(Temperature temperature) {
    notifyObservers(temperature);
  }

  @override
  void addObserver(Observer<Temperature> observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer<Temperature> observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers(Temperature temperature) {
    for (final observer in _observers) {
      observer.update(temperature);
    }
  }

  @override
  List<Observer<Temperature>> get observers => List.unmodifiable(_observers);
}

// Abstract Observer(Subscriber) [Push Mechanism]
abstract class Observer<T> {
  void update(T data);
}

// Concrete Observers
class UI extends Observer<Temperature> {
  @override
  void update(Temperature temperature) {
    print('UI updated with temperature: ${temperature.value}°C');
  }
}

class Logger extends Observer<Temperature> {
  @override
  void update(Temperature temperature) {
    print('Logger recorded temperature: ${temperature.value}°C');
  }
}

class AlertSystem extends Observer<Temperature> {
  @override
  void update(Temperature temperature) {
    if (temperature.value > 35) {
      print('Alert! High temperature: ${temperature.value}°C');
    }
  }
}
