import 'auth_method_interface.dart';
import 'auth_type.dart';

abstract interface class IAuthMethodFactory {
  IAuthMethod createAuthMethod(AuthType authType);
}
