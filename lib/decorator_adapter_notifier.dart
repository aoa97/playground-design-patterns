// Legacy class => Remains untouched
class LegacyBasicNotifierUnEditable {
  void notify() {
    print("Notifier: Sending notification...");
  }
}

main() {
  final notifier = EncryptionNotifier(
    NotifierAdapter(
      LegacyBasicNotifierUnEditable(),
    ),
  );
  notifier.notify();
}

// Abstract Component
abstract class Notifier {
  void notify();
}

// Adapter to make LegacyBasicNotifierUnEditable compatible with Notifier
class NotifierAdapter implements Notifier {
  final LegacyBasicNotifierUnEditable notifier; // Adaptee

  NotifierAdapter(this.notifier);

  @override
  void notify() {
    notifier.notify();
  }
}

abstract class DecoratorNotifier implements Notifier {
  final Notifier notifier;

  DecoratorNotifier(this.notifier);
}

class LoggingNotifier extends DecoratorNotifier {
  LoggingNotifier(super.notifier);

  @override
  void notify() {
    print("LoggingNotifier: Logging before notification.");
    notifier.notify();
    print("LoggingNotifier: Logging after notification.");
  }
}

class RetryNotifier extends DecoratorNotifier {
  final int maxRetries;

  RetryNotifier(super.notifier, {this.maxRetries = 3});

  @override
  void notify() {
    int attempts = 0;
    while (attempts < maxRetries) {
      try {
        notifier.notify();
        print("RetryNotifier: Notification sent successfully.");
        return;
      } catch (e) {
        attempts++;
        print("RetryNotifier: Notification failed, attempt $attempts.");
      }
    }
    print("RetryNotifier: All retry attempts failed.");
  }
}

class EncryptionNotifier extends DecoratorNotifier {
  EncryptionNotifier(super.notifier);

  @override
  void notify() {
    print("EncryptionNotifier: Encrypting message before notification.");
    notifier.notify();
    print("EncryptionNotifier: Message encrypted and notification sent.");
  }
}
