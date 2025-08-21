import 'pricing_strategy.dart';

class RegularPricingStrategy implements IPricingStrtegy {
  @override
  double calcPrice(double price) {
    return price;
  }
}
