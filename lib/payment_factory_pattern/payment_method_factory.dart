import 'card_type.dart';
import 'payment_method_base.dart';
import 'payment_methods/master_card.dart';
import 'payment_methods/visa.dart';

class PaymentMethodFactory {
  PaymentMethod createPaymentMethod(CardType type) {
    return switch (type) {
      CardType.visa => Visa(),
      CardType.masterCard => MasterCard(),
    };
  }
}
