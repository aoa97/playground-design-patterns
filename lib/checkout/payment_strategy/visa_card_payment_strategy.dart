import 'payment_strategy.dart';

class VisaCardPaymentStrategy implements IPaymentStrtegy {
  @override
  pay(double price) {
    print("Pay with Visa Card: $price");
  }
}
