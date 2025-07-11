import '../../enums/order_status.dart';
import 'order_observer_interface.dart';

abstract class IOrderObserverable {
  void add(IOrderObserver observer);
  void remove(IOrderObserver observer);
  void updateStatus(OrderStatus status);
}
