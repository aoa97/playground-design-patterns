import 'eager_session_manager.dart';
import 'lazy_session_manager.dart';

main() {
  final eagerSessionManager = EagerSessionManager.getInstance();
  eagerSessionManager.timeoutDuration = 30;
  eagerSessionManager.secureCookies = true;
  print("Session: ${eagerSessionManager.toString()}");

  final lazySessionManager = LazySessionManager.getInstance();
  lazySessionManager.timeoutDuration = 10;
  lazySessionManager.secureCookies = false;
  print("Session: ${lazySessionManager.toString()}");
}
