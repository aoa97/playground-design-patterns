import 'social_auth_method_base.dart';

final class FacebookAuthMethod extends SocialAuthMethod {
  @override
  void authenticate() {
    print("Authenticating using Facebook ...");
  }
}
