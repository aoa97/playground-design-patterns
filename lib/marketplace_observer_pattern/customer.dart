import 'subscriber.dart';

class Customer implements ISubscriber {
  final String name;

  Customer({required this.name});

  @override
  notify(String message) {
    print('$name received notification: $message');
  }

  @override
  String toString() {
    return 'Customer(name: $name)';
  }
}
