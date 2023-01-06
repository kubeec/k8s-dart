import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AuthenticationV1Api
void main() {
  final instance = K8s().getAuthenticationV1Api();

  group(AuthenticationV1Api, () {
    // create a TokenReview
    //
    //Future<IoK8sApiAuthenticationV1TokenReview> createAuthenticationV1TokenReview(IoK8sApiAuthenticationV1TokenReview body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createAuthenticationV1TokenReview', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getAuthenticationV1APIResources() async
    test('test getAuthenticationV1APIResources', () async {
      // TODO
    });

  });
}
