import 'beverage.dart';
import 'condiments.dart';

extension BeverageExtension on Beverage {
  Beverage withMocha() => Mocha(this);
  Beverage withSoy() => Soy(this);
  Beverage withWhip() => Whip(this);
}
