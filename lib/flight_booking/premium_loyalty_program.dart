import 'loyalty_program_interface.dart';

class PremiumLoyaltyProgram implements ILoyaltyProgram {
  @override
  applyDiscount() {
    print("Apply Premium discount");
  }
}
