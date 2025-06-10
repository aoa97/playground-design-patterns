import 'package:meta/meta.dart';
import 'package:playground_design_patterns/pizza_builder.dart';

@immutable
class Pizza {
  final String crust;
  final String sauce;
  final List<String> toppings;
  final bool hasCheese;

  Pizza(PizzaBuilder builder)
      : crust = builder.crust,
        sauce = builder.sauce,
        toppings = builder.toppings,
        hasCheese = builder.hasCheese;

  @override
  String toString() {
    return 'Pizza(crust: $crust, sauce: $sauce, toppings: $toppings, hasCheese: $hasCheese)';
  }
}
