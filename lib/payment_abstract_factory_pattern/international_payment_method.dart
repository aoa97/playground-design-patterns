import 'package:playground_design_patterns/payment_abstract_factory_pattern/card_data_model.dart';

import 'payment_method_interface.dart';

abstract class InternationalPaymentMethod implements PaymentMethod {
  InternationalPaymentMethod();

  @override
  authorize(CardDataModel cardDataModel);

  @override
  calcPaymentFees(double amount);

  @override
  startMoneyTransfer();
}
