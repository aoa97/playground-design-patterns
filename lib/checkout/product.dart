import 'package:playground_design_patterns/checkout/pricing_strategy/pricing_strategy.dart';

class Product {
  final String name;
  final double price;
  final IPricingStrtegy pricingStrategy;

  Product({
    required this.name,
    required this.price,
    required this.pricingStrategy,
  });

  double calcPrice() => pricingStrategy.calcPrice(price);
}
