import 'card_type.dart';
import 'payment_method_factory_interface.dart';
import 'payment_method_interface.dart';
import 'payment_methods/master_card.dart';
import 'payment_methods/visa.dart';

class InternationalPaymentMethodFactory implements PaymentMethodFactory {
  @override
  PaymentMethod createPaymentMethod(CardType type) {
    return switch (type) {
      CardType.visa => Visa(),
      CardType.masterCard => MasterCard(),
      _ => throw UnimplementedError("This card type is not supported"),
    };
  }
}
