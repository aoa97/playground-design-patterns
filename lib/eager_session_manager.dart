class EagerSessionManager {
  int _timeoutDuration;
  bool _secureCookies;

  EagerSessionManager._()
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

  static final EagerSessionManager _instance = EagerSessionManager._();

  static EagerSessionManager getInstance() {
    return _instance;
  }

  @override
  String toString() {
    return 'EagerSessionManager(timeoutDuration: $_timeoutDuration, secureCookies: $_secureCookies)';
  }
}
