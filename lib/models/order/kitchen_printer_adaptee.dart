import 'kitchen_printer_adapter.dart';
import 'order.dart';

class KitchenPrinterAdaptee implements KitchenPrinterAdapter {
  final Order order;

  KitchenPrinterAdaptee({required this.order});

  @override
  String format() {
    return "SIZE=${order.pizza.size};CRUST=${order.pizza.crust.name.toUpperCase()};"
        "TOPPINGS=${order.pizza.toppings.map((t) => t.name.toUpperCase()).join(',')};";
  }
}
