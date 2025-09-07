import 'auth_method_interface.dart';

class UsernamePasswordAuthMethod implements IAuthMethod {
  @override
  void authenticate() {
    print("Authenticating using username and password ...");
  }
}
