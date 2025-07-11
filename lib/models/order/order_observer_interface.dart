import 'package:playground_design_patterns/enums/order_status.dart';

abstract class IOrderObserver {
  void notify(OrderStatus status);
}
