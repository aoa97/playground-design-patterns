import 'loyalty_program_interface.dart';

abstract base class AirLineProviderBase {
  final ILoyaltyProgram loyaltyProgram;

  AirLineProviderBase({required this.loyaltyProgram});

  bookFlight();
}
