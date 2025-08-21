import 'payment_strategy.dart';

class BankTransferPaymentStrategy implements IPaymentStrtegy {
  @override
  pay(double price) {
    print("Pay with Bank Transfer: $price");
  }
}
