import 'pricing_strategy.dart';

class PremiumPricingStrategy implements IPricingStrtegy {
  @override
  double calcPrice(double price) {
    return price * .5;
  }
}
