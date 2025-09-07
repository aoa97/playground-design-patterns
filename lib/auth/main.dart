import 'auth_controller.dart';
import 'auth_type.dart';
import 'social_auth_method_factory.dart';
import 'two_factor_auth_method_factory.dart';
import 'username_password_auth_method_factory.dart';

void main() {
  final authController1 = AuthController(
    authMethodFactory: SocialAuthMethodFactory(),
  );
  authController1.processAuth(AuthType.facebook);

  final authController2 = AuthController(
    authMethodFactory: UsernamePasswordAuthMethodFactory(),
  );
  authController2.processAuth(AuthType.usernamePassword);

  final authController3 = AuthController(
    authMethodFactory: TwoFactorAuthMethodFactory(),
  );
  authController3.processAuth(AuthType.twoFactor);
}
