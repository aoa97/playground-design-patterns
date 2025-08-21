import 'payment_strategy.dart';

class PaypalPaymentStrategy implements IPaymentStrtegy {
  @override
  pay(double price) {
    print("Pay with Paypal: $price");
  }
}
