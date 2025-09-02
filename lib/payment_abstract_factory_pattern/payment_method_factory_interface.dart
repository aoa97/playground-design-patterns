import 'card_type.dart';
import 'payment_method_interface.dart';

abstract interface class PaymentMethodFactory {
  PaymentMethod createPaymentMethod(CardType type);
}
