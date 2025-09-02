import '../card_data_model.dart';
import '../payment_method_base.dart';

final class MasterCard extends PaymentMethod {
  MasterCard();

  @override
  authorize(CardDataModel cardDataModel) {
    print("Authorizing with [MasterCard] ...");
  }

  @override
  calcPaymentFees(double amount) {
    print("Calculating payment fees of \$${amount} with [MasterCard] ...");
  }

  @override
  startMoneyTransfer() {
    print("Starting money transfer with [MasterCard] ...");
  }
}
