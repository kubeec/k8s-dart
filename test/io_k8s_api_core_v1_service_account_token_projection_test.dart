import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ServiceAccountTokenProjection
void main() {
  final instance = IoK8sApiCoreV1ServiceAccountTokenProjectionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ServiceAccountTokenProjection, () {
    // audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
    // String audience
    test('to test the property `audience`', () async {
      // TODO
    });

    // expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
    // int expirationSeconds
    test('to test the property `expirationSeconds`', () async {
      // TODO
    });

    // path is the path relative to the mount point of the file to project the token into.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

  });
}
