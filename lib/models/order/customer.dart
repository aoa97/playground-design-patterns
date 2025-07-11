import '../../enums/order_status.dart';
import 'order_observer_interface.dart';

class Customer implements IOrderObserver {
  final String name;

  Customer(this.name);

  @override
  void notify(OrderStatus status) {
    return switch (status) {
      OrderStatus.submitted => print('$name: Your order has been submitted.'),
      OrderStatus.preparing => print('$name: Your order is being prepared.'),
      OrderStatus.baking => print('$name: Your pizza is on the oven.'),
      OrderStatus.ready => print('$name: Your pizza is ready for pickup!'),
    };
  }
}
