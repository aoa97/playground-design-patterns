import 'package:playground_design_patterns/checkout/payment_strategy/payment_strategy.dart';

class Checkout {
  final IPaymentStrtegy paymentStrategy;

  Checkout({required this.paymentStrategy});

  void processPayment(double price) => paymentStrategy.pay(price);
}
