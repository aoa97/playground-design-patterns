import 'card_data_model.dart';

abstract interface class PaymentMethod {
  PaymentMethod();

  authorize(CardDataModel cardDataModel);

  startMoneyTransfer();

  calcPaymentFees(double amount);
}
