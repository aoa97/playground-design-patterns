import 'package:meta/meta.dart';

part 'pizza_builder.dart';

@immutable
class Pizza {
  // The Final Product [Public Attributes]
  final String crust;
  final String sauce;
  final List<String> toppings;
  final bool hasCheese;

  Pizza(PizzaBuilder builder)
      : crust = builder._crust,
        sauce = builder._sauce,
        toppings = builder._toppings,
        hasCheese = builder._hasCheese;

  @override
  String toString() {
    return 'Pizza(crust: $crust, sauce: $sauce, toppings: $toppings, hasCheese: $hasCheese)';
  }
}
