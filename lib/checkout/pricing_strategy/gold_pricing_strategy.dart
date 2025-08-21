import 'pricing_strategy.dart';

class GoldPricingStrategy implements IPricingStrtegy {
  @override
  double calcPrice(double price) {
    return price * .75;
  }
}
