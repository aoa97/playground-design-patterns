import 'auth_method_interface.dart';

class TwoFactorAuthMethod implements IAuthMethod {
  @override
  void authenticate() {
    print("Authenticating using 2FA ...");
  }
}
