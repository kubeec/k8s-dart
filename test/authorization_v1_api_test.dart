import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AuthorizationV1Api
void main() {
  final instance = K8s().getAuthorizationV1Api();

  group(AuthorizationV1Api, () {
    // create a LocalSubjectAccessReview
    //
    //Future<IoK8sApiAuthorizationV1LocalSubjectAccessReview> createAuthorizationV1NamespacedLocalSubjectAccessReview(String namespace, IoK8sApiAuthorizationV1LocalSubjectAccessReview body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createAuthorizationV1NamespacedLocalSubjectAccessReview', () async {
      // TODO
    });

    // create a SelfSubjectAccessReview
    //
    //Future<IoK8sApiAuthorizationV1SelfSubjectAccessReview> createAuthorizationV1SelfSubjectAccessReview(IoK8sApiAuthorizationV1SelfSubjectAccessReview body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createAuthorizationV1SelfSubjectAccessReview', () async {
      // TODO
    });

    // create a SelfSubjectRulesReview
    //
    //Future<IoK8sApiAuthorizationV1SelfSubjectRulesReview> createAuthorizationV1SelfSubjectRulesReview(IoK8sApiAuthorizationV1SelfSubjectRulesReview body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createAuthorizationV1SelfSubjectRulesReview', () async {
      // TODO
    });

    // create a SubjectAccessReview
    //
    //Future<IoK8sApiAuthorizationV1SubjectAccessReview> createAuthorizationV1SubjectAccessReview(IoK8sApiAuthorizationV1SubjectAccessReview body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createAuthorizationV1SubjectAccessReview', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getAuthorizationV1APIResources() async
    test('test getAuthorizationV1APIResources', () async {
      // TODO
    });

  });
}
