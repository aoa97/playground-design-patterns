class LazySessionManager {
  int _timeoutDuration;
  bool _secureCookies;

  LazySessionManager._()
      : _timeoutDuration = 30,
        _secureCookies = true;

  set timeoutDuration(int value) {
    if (value < 0) {
      throw ArgumentError("Timeout duration cannot be negative.");
    }
    _timeoutDuration = value;
  }

  set secureCookies(bool value) {
    _secureCookies = value;
  }

  int get timeoutDuration => _timeoutDuration;

  bool get secureCookies => _secureCookies;

  static LazySessionManager? _instance;

  static LazySessionManager getInstance() {
    _instance ??= LazySessionManager._();
    return _instance!;
  }

  @override
  String toString() {
    return 'LazySessionManager(timeoutDuration: $_timeoutDuration, secureCookies: $_secureCookies)';
  }
}
