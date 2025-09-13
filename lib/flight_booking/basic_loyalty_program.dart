import 'loyalty_program_interface.dart';

class BasicLoyaltyProgram implements ILoyaltyProgram {
  @override
  applyDiscount() {
    print("Apply Basic discount");
  }
}
