import 'auth_method_factory_interface.dart';
import 'auth_method_interface.dart';
import 'auth_type.dart';
import 'username_password_auth_method.dart';

class UsernamePasswordAuthMethodFactory implements IAuthMethodFactory {
  @override
  IAuthMethod createAuthMethod(AuthType authType) {
    return UsernamePasswordAuthMethod();
  }
}
