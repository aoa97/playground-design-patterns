import 'card_type.dart';
import 'local_payment_method.dart';
import 'payment_method_factory_interface.dart';
import 'payment_methods/meeza.dart';

class LocalPaymentMethodFactory implements PaymentMethodFactory {
  @override
  LocalPaymentMethod createPaymentMethod(CardType type) {
    return switch (type) {
      CardType.meeza => Meeza(),
      _ => throw UnimplementedError("This card type is not supported"),
    };
  }
}
