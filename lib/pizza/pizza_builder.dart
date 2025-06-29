part of 'pizza_model.dart';

class PizzaBuilder {
  // The Private Workshop [Private Attributes]
  String _crust = "Thin Crust";
  String _sauce = "Tomato Sauce";
  List<String> _toppings = [];
  bool _hasCheese = true;

  PizzaBuilder withCrust(String crust) {
    this._crust = crust;
    return this; // for method chaining
  }

  PizzaBuilder withSauce(String sauce) {
    this._sauce = sauce;
    return this;
  }

  PizzaBuilder withToppings(List<String> toppings) {
    this._toppings = toppings;
    return this;
  }

  PizzaBuilder withCheese() {
    this._hasCheese = true;
    return this;
  }

  // Construct the pizza
  Pizza build() {
    return Pizza(this);
  }
}
