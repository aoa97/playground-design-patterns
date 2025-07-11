import '../../enums/order_status.dart';
import '../pizza/pizza.dart';
import 'order_observer_interface.dart';
import 'order_observerble_interface.dart';

class Order implements IOrderObserverable {
  Pizza _pizza;
  OrderStatus _status;
  List<IOrderObserver> _observers;

  Order({
    required Pizza pizza,
    required List<IOrderObserver> observers,
    OrderStatus? status,
  })  : _observers = observers,
        _status = status ?? OrderStatus.submitted,
        _pizza = pizza;

  @override
  void add(IOrderObserver observer) {
    _observers.add(observer);
  }

  @override
  void remove(IOrderObserver observer) {
    _observers.remove(observer);
  }

  @override
  void updateStatus(OrderStatus status) {
    this._status = status;
    for (var observer in _observers) {
      observer.notify(status);
    }
  }

  Pizza get pizza => _pizza;
  OrderStatus get status => _status;
}
