import '../card_data_model.dart';
import '../payment_method_base.dart';

final class Visa extends PaymentMethod {
  Visa();

  @override
  authorize(CardDataModel cardDataModel) {
    print("Authorizing with [Visa] ...");
  }

  @override
  calcPaymentFees(double amount) {
    print("Calculating payment fees of \$${amount} with [Visa] ...");
  }

  @override
  startMoneyTransfer() {
    print("Starting money transfer with [Visa] ...");
  }
}
