import '../card_data_model.dart';
import '../local_payment_method.dart';

class Meeza implements LocalPaymentMethod {
  Meeza();

  @override
  authorize(CardDataModel cardDataModel) {
    print("Authorizing with [Meeza] ...");
  }

  @override
  calcPaymentFees(double amount) {
    print("Calculating payment fees of \$${amount} with [Meeza] ...");
  }

  @override
  startMoneyTransfer() {
    print("Starting money transfer with [Meeza] ...");
  }
}
