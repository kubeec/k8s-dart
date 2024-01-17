import 'package:k8s/src/authenticators/authenticator.dart';

///
class OidcAuthenticator extends Authenticator {
  @override
  String getName() {
    return 'gcp';
  }

  @override
  String getToken(Map<String, String> config) {
    return '';
  }

  @override
  bool isExpired(Map<String, String> config) {
    return false;
  }

  @override
  Map<String, String> refresh(Map<String, String> config) {
    return <String, String>{};
  }
}
