import 'subscriber.dart';

class User implements Subscriber {
  final String name;

  User({required this.name});

  @override
  notify(String message) {
    print('User $name received notification: $message');
  }
}
