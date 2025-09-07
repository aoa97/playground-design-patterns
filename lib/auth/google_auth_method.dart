import 'social_auth_method_base.dart';

final class GoogleAuthMethod extends SocialAuthMethod {
  @override
  void authenticate() {
    print("Authenticating using Google ...");
  }
}
