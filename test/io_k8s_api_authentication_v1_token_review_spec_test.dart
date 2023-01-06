import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthenticationV1TokenReviewSpec
void main() {
  final instance = IoK8sApiAuthenticationV1TokenReviewSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthenticationV1TokenReviewSpec, () {
    // Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
    // BuiltList<String> audiences
    test('to test the property `audiences`', () async {
      // TODO
    });

    // Token is the opaque bearer token.
    // String token
    test('to test the property `token`', () async {
      // TODO
    });

  });
}
