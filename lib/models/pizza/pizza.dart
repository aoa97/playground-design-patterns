import 'dart:collection';

import '../../enums/pizza_crust.dart';
import '../../enums/pizza_size.dart';
import '../../enums/pizza_topping.dart';
import 'pizza_builder.dart';

class Pizza {
  final PizzaSize _size;
  final PizzaCrust _crust;
  final UnmodifiableListView<PizzaTopping> _toppings;

  Pizza(PizzaBuilder builder)
      : _size = builder.size ?? PizzaSize.medium,
        _crust = builder.crust ?? PizzaCrust.thin,
        _toppings = builder.toppings ?? UnmodifiableListView<PizzaTopping>([]);

  PizzaSize get size => _size;
  PizzaCrust get crust => _crust;
  UnmodifiableListView<PizzaTopping> get toppings => _toppings;
}
