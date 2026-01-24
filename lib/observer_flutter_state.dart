void main() {
  final authController = AuthController();

  final home = HomeScreen(authController);
  final navbar = Navbar(authController);

  home.init();
  navbar.init();

  authController
    ..login('user_123')
    ..logout();

  home.dispose();
  navbar.dispose();
}

class Observable {
  final List<Observer> _observers = [];

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void _notifyObservers() {
    for (final observer in _observers) {
      observer.notify();
    }
  }
}

sealed class AuthState {}

class Unauthenticated extends AuthState {}

class Authenticated extends AuthState {
  final String userId;

  Authenticated(this.userId);
}

class AuthController extends Observable {
  AuthState _state = Unauthenticated();

  // ---- Pull API ----
  AuthState get state => _state;

  bool get isAuthenticated => _state is Authenticated;

  String? get userId => _state is Authenticated ? (_state as Authenticated).userId : null;

  void login(String userId) {
    _state = Authenticated(userId);
    _notifyObservers();
  }

  void logout() {
    _state = Unauthenticated();
    _notifyObservers();
  }
}

abstract class Observer {
  void notify();
}

class HomeScreen implements Observer {
  final AuthController auth;

  HomeScreen(this.auth);

  void init() => auth.addObserver(this);

  void dispose() => auth.removeObserver(this);

  @override
  void notify() {
    if (auth.isAuthenticated) {
      print('HomeScreen: Welcome ${auth.userId}');
    } else {
      print('HomeScreen: Please log in');
    }
  }
}

class Navbar implements Observer {
  final AuthController auth;

  Navbar(this.auth);

  void init() => auth.addObserver(this);

  void dispose() => auth.removeObserver(this);

  @override
  void notify() {
    print(auth.isAuthenticated ? 'Navbar: Show Logout' : 'Navbar: Show Login');
  }
}
