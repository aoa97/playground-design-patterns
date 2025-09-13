import 'air_line_provider_base.dart';

final class EgyptAirLineProvider extends AirLineProviderBase {
  EgyptAirLineProvider({required super.loyaltyProgram});

  @override
  bookFlight() {
    loyaltyProgram.applyDiscount();
    print('EgyptAirLineProvider bookFlight with ${loyaltyProgram.runtimeType} program');
  }
}
