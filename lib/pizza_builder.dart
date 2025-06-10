import 'pizza_model.dart';

class PizzaBuilder {
  String crust = "Thin Crust";
  String sauce = "Tomato Sauce";
  List<String> toppings = [];
  bool hasCheese = true;

  PizzaBuilder withCrust(String crust) {
    this.crust = crust;
    return this; // for method chaining
  }

  PizzaBuilder withSauce(String sauce) {
    this.sauce = sauce;
    return this;
  }

  PizzaBuilder withToppings(List<String> toppings) {
    this.toppings = toppings;
    return this;
  }

  PizzaBuilder withCheese() {
    this.hasCheese = true;
    return this;
  }

  // Construct the pizza
  Pizza build() {
    return Pizza(this);
  }
}
