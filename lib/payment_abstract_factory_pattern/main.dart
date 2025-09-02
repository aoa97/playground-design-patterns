import 'card_data_model.dart';
import 'card_type.dart';
import 'international_payment_method_factory.dart';
import 'local_payment_method_factory.dart';
import 'payment_processor.dart';

main() {
  final internationalPaymentMethodFactory = InternationalPaymentMethodFactory();
  final localPaymentMethodFactory = LocalPaymentMethodFactory();

  final internationalPaymentProcessor = PaymentProcessor(
    paymentMethodFactory: internationalPaymentMethodFactory,
  );

  final localPaymentProcessor = PaymentProcessor(
    paymentMethodFactory: localPaymentMethodFactory,
  );

  internationalPaymentProcessor.processPayment(
    amount: 100.0,
    cardType: CardType.visa,
    cardData: CardDataModel(
      cardHolder: "AHMED USAMA",
      cardNumber: "4242 4242 4242 4242",
      expiryDate: "12/24",
      cvv: "123",
    ),
  );

  localPaymentProcessor.processPayment(
    amount: 150.0,
    cardType: CardType.meeza,
    cardData: CardDataModel(
      cardHolder: "AHMED USAMA",
      cardNumber: "4242 4242 4242 4242",
      expiryDate: "12/24",
      cvv: "123",
    ),
  );
}
