import 'air_line_provider_base.dart';
import 'basic_loyalty_program.dart';
import 'egypt_air_line_provider.dart';

main() {
  final AirLineProviderBase airLineProvider = EgyptAirLineProvider(loyaltyProgram: BasicLoyaltyProgram());
  airLineProvider.bookFlight();
}
