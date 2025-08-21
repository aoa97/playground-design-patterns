import 'package:playground_design_patterns/checkout/pricing_strategy/premium_pricing_strategy.dart';

import 'checkout.dart';
import 'payment_strategy/bank_transfer_payment_strategy.dart';
import 'product.dart';

main() {
  final p1 = Product(
    name: 'IPhone 16 Pro Max',
    price: 10.0,
    pricingStrategy: PremiumPricingStrategy(),
  );

  final p1Price = p1.calcPrice();

  final p1Checkout = Checkout(
    paymentStrategy: BankTransferPaymentStrategy(),
  );

  p1Checkout.processPayment(p1Price);
}
