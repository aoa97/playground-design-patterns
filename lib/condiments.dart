import 'condiment_decorator.dart';

final class Mocha extends CondimentDecorator {
  Mocha(super.beverage);

  @override
  String get description => "${beverage.description}, Mocha";

  @override
  double cost() => beverage.cost() + 0.20;
}

final class Soy extends CondimentDecorator {
  Soy(super.beverage);

  @override
  String get description => "${beverage.description}, Soy";

  @override
  double cost() => beverage.cost() + 0.15;
}

final class Whip extends CondimentDecorator {
  Whip(super.beverage);

  @override
  String get description => "${beverage.description}, Whip";

  @override
  double cost() => beverage.cost() + 0.10;
}
