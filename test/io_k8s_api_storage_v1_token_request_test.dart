import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiStorageV1TokenRequest
void main() {
  final instance = IoK8sApiStorageV1TokenRequestBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiStorageV1TokenRequest, () {
    // Audience is the intended audience of the token in \"TokenRequestSpec\". It will default to the audiences of kube apiserver.
    // String audience
    test('to test the property `audience`', () async {
      // TODO
    });

    // ExpirationSeconds is the duration of validity of the token in \"TokenRequestSpec\". It has the same default value of \"ExpirationSeconds\" in \"TokenRequestSpec\".
    // int expirationSeconds
    test('to test the property `expirationSeconds`', () async {
      // TODO
    });

  });
}
