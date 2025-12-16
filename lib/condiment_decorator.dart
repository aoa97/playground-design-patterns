import 'beverage.dart';

abstract base class CondimentDecorator implements Beverage {
  final Beverage beverage;

  CondimentDecorator(this.beverage);
}

// [base] => Enforces that CondimentDecorator must be extended so we can leverage (super.beverage) in subclasses.


