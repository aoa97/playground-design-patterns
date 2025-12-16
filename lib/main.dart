import 'package:playground_design_patterns/beverages.dart';
import 'package:playground_design_patterns/extensions.dart';

import 'beverage.dart';
import 'coffees.dart';

main() {
  // TODO: We can manage instantiation via a builder or factory for better / cleaner code.

  // Using extension methods for condiments [Builder Pattern style]
  Beverage beverage = Espresso().withMocha().withMocha().withWhip().withSoy();
  print("${beverage.description} \$${beverage.cost()}");
  print("beverage runtimeType: ${beverage is Coffee}");

  // // Beverage - Espresso with no condiments
  // Beverage beverage1 = Espresso();
  // print("${beverage1.description} \$${beverage1.cost()}");

  // // Beverage - Decaf with Soy, Mocha, and Whip
  // Beverage beverage2 = Decaf();
  // beverage2 = Soy(beverage2); // Polymorphic wrapping
  // beverage2 = Mocha(beverage2);
  // beverage2 = Whip(beverage2);
  // print("${beverage2.description} \$${beverage2.cost()}");

  // // Beverage - DarkRoast with double Mocha and Whip
  // Beverage beverage3 = DarkRoast();
  // beverage3 = Mocha(beverage3);
  // beverage3 = Mocha(beverage3);
  // beverage3 = Whip(beverage3);
  // print("${beverage3.description} \$${beverage3.cost()}");
}
