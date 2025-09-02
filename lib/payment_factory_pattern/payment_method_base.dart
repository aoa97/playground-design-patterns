import 'card_data_model.dart';

abstract base class PaymentMethod {
  PaymentMethod();

  authorize(CardDataModel cardDataModel);

  startMoneyTransfer();

  calcPaymentFees(double amount);
}
