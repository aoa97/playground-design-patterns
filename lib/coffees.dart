import 'beverage.dart';

class Decaf implements Beverage {
  @override
  String get description => "Decaf";

  @override
  double cost() => 1.05;
}

class Espresso implements Beverage {
  @override
  String get description => "Espresso";

  @override
  double cost() => 1.99;
}

class DarkRoast implements Beverage {
  @override
  String get description => "Dark Roast";
  @override
  double cost() => 0.99;
}
