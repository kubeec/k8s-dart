import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthenticationV1TokenRequestSpec
void main() {
  final instance = IoK8sApiAuthenticationV1TokenRequestSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthenticationV1TokenRequestSpec, () {
    // Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
    // BuiltList<String> audiences
    test('to test the property `audiences`', () async {
      // TODO
    });

    // IoK8sApiAuthenticationV1BoundObjectReference boundObjectRef
    test('to test the property `boundObjectRef`', () async {
      // TODO
    });

    // ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
    // int expirationSeconds
    test('to test the property `expirationSeconds`', () async {
      // TODO
    });

  });
}
