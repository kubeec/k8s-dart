import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AuthenticationV1alpha1Api
void main() {
  final instance = K8s().getAuthenticationV1alpha1Api();

  group(AuthenticationV1alpha1Api, () {
    // create a SelfSubjectReview
    //
    //Future<IoK8sApiAuthenticationV1alpha1SelfSubjectReview> createAuthenticationV1alpha1SelfSubjectReview(IoK8sApiAuthenticationV1alpha1SelfSubjectReview body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createAuthenticationV1alpha1SelfSubjectReview', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getAuthenticationV1alpha1APIResources() async
    test('test getAuthenticationV1alpha1APIResources', () async {
      // TODO
    });

  });
}
