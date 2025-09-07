import 'auth_method_factory_interface.dart';
import 'auth_method_interface.dart';
import 'auth_type.dart';
import 'facebook_auth_method.dart';
import 'google_auth_method.dart';

class SocialAuthMethodFactory implements IAuthMethodFactory {
  @override
  IAuthMethod createAuthMethod(AuthType authType) {
    return switch (authType) {
      AuthType.google => GoogleAuthMethod(),
      AuthType.facebook => FacebookAuthMethod(),
      _ => throw UnsupportedError('Unsupported social auth type: $authType'),
    };
  }
}
