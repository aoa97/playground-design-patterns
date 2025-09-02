import 'card_data_model.dart';
import 'card_type.dart';
import 'payment_method_factory_interface.dart';

class PaymentProcessor {
  final PaymentMethodFactory _paymentMethodFactory;

  PaymentProcessor({
    required PaymentMethodFactory paymentMethodFactory,
  }) : _paymentMethodFactory = paymentMethodFactory;

  void processPayment({
    required CardDataModel cardData,
    required CardType cardType,
    required double amount,
  }) {
    final paymentMethod = _paymentMethodFactory.createPaymentMethod(cardType);

    paymentMethod
      ..authorize(cardData)
      ..startMoneyTransfer()
      ..calcPaymentFees(amount);
  }
}
