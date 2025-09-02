import '../card_data_model.dart';
import '../international_payment_method.dart';

final class Visa extends InternationalPaymentMethod {
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
