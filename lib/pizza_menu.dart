import 'package:playground_design_patterns/enums/pizza_topping.dart';

class PizzaMenu {
  static final PizzaMenu _instance = PizzaMenu._();

  PizzaMenu._();

  static PizzaMenu getInstance() {
    return _instance;
  }

  // Instance

  final Map<PizzaTopping, double> toppings = {
    PizzaTopping.pepperoni: 30,
    PizzaTopping.mushrooms: 40,
    PizzaTopping.extra_cheese: 45,
    PizzaTopping.black_olives: 35,
    PizzaTopping.green_peppers: 40,
    PizzaTopping.pineapple: 50,
    PizzaTopping.spinach: 30,
    PizzaTopping.jalapenos: 45,
    PizzaTopping.anchovies: 60,
  };
}
