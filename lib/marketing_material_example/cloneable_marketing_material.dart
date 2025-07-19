import 'marketing_material.dart';

// Using mixin since cloning is just extra behavior, not an "is-a" relationship.
abstract mixin class CloneableMarketingMaterial {
  MarketingMaterial clone();
}
