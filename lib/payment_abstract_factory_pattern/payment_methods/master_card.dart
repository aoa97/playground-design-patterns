import '../card_data_model.dart';
import '../international_payment_method.dart';

final class MasterCard extends InternationalPaymentMethod {
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
