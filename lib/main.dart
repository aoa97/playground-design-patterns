import 'enums/order_status.dart';
import 'enums/pizza_crust.dart';
import 'enums/pizza_size.dart';
import 'enums/pizza_topping.dart';
import 'models/order/customer.dart';
import 'models/order/kitchen_printer_adaptee.dart';
import 'models/order/order.dart';
import 'models/order/order_observer_interface.dart';
import 'models/pizza/pizza.dart';
import 'models/pizza/pizza_builder.dart';
import 'pizza_menu.dart';

main() async {
  final menu = PizzaMenu.getInstance();

  // print('Available Toppings:');
  // menu.toppings.forEach((topping, price) {
  //   print('${topping.name}: \$${price}');
  // });

  final Pizza pizza = PizzaBuilder()
      .setToppings([PizzaTopping.pepperoni, PizzaTopping.mushrooms])
      .setSize(PizzaSize.large)
      .setCrust(PizzaCrust.thin)
      .build();

  final IOrderObserver customer = Customer("Ahmed Usama");

  final Order order = Order(
    pizza: pizza,
    observers: [customer],
  );

  // Simulate order status updates
  order.updateStatus(OrderStatus.preparing);
  await Future.delayed(Duration(seconds: 1));
  order.updateStatus(OrderStatus.baking);
  await Future.delayed(Duration(seconds: 1));
  order.updateStatus(OrderStatus.ready);

  // Kitchen Printer Adaptee
  final kitchenPrinter = KitchenPrinterAdaptee(order: order);
  print(kitchenPrinter.format());
}
