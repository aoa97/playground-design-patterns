import 'card_data_model.dart';
import 'card_type.dart';
import 'payment_method_factory.dart';
import 'payment_processor.dart';

main() {
  final paymentMethodFactory = PaymentMethodFactory();
  final paymentProcessor = PaymentProcessor(paymentMethodFactory: paymentMethodFactory);

  paymentProcessor.processPayment(
    amount: 100.0,
    cardType: CardType.visa,
    cardData: CardDataModel(
      cardHolder: "AHMED USAMA",
      cardNumber: "4242 4242 4242 4242",
      expiryDate: "12/24",
      cvv: "123",
    ),
  );

  paymentProcessor.processPayment(
    amount: 150.0,
    cardType: CardType.masterCard,
    cardData: CardDataModel(
      cardHolder: "AHMED USAMA",
      cardNumber: "4242 4242 4242 4242",
      expiryDate: "12/24",
      cvv: "123",
    ),
  );
}
