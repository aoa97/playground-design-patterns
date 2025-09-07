import 'auth_method_interface.dart';

abstract base class SocialAuthMethod implements IAuthMethod {
  @override
  void authenticate();
}
