import 'auth_method_factory_interface.dart';
import 'auth_type.dart';
import 'two_factor_auth_method.dart';

class TwoFactorAuthMethodFactory implements IAuthMethodFactory {
  @override
  createAuthMethod(AuthType authType) {
    return switch (authType) {
      AuthType.twoFactor => TwoFactorAuthMethod(),
      _ => throw UnsupportedError('Unsupported two-factor auth type'),
    };
  }
}
