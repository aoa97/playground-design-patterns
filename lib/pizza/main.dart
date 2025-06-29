// Statement: Ease the construction of complex objects
// Example: Separate the construction of Pizza from its representation

import 'pizza_model.dart';

main() {
  var pizza = PizzaBuilder()
      .withCrust("Stuffed Crust")
      .withSauce("Hot Sauce")
      .withToppings(["Pepperoni", "Mushrooms"])
      .withCheese()
      .build();

  print(pizza.toString());
}
