import 'dart:collection';

import '../../enums/pizza_crust.dart';
import '../../enums/pizza_size.dart';
import '../../enums/pizza_topping.dart';
import 'pizza.dart';

class PizzaBuilder {
  PizzaSize? size;
  PizzaCrust? crust;
  UnmodifiableListView<PizzaTopping>? toppings;

  PizzaBuilder setSize(PizzaSize size) {
    this.size = size;
    return this;
  }

  PizzaBuilder setCrust(PizzaCrust crust) {
    this.crust = crust;
    return this;
  }

  PizzaBuilder setToppings(List<PizzaTopping> toppings) {
    this.toppings = UnmodifiableListView(toppings);
    return this;
  }

  Pizza build() {
    return Pizza(this);
  }
}
