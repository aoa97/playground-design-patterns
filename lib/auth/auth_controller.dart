import 'auth_method_factory_interface.dart';
import 'auth_type.dart';

class AuthController {
  final IAuthMethodFactory _authMethodFactory;

  AuthController({
    required IAuthMethodFactory authMethodFactory,
  }) : _authMethodFactory = authMethodFactory;

  void processAuth(AuthType authType) {
    final authMethod = _authMethodFactory.createAuthMethod(authType);
    authMethod.authenticate();
  }
}
