import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AdmissionregistrationV1alpha1Api
void main() {
  final instance = K8s().getAdmissionregistrationV1alpha1Api();

  group(AdmissionregistrationV1alpha1Api, () {
    // create a ValidatingAdmissionPolicy
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy> createAdmissionregistrationV1alpha1ValidatingAdmissionPolicy(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createAdmissionregistrationV1alpha1ValidatingAdmissionPolicy', () async {
      // TODO
    });

    // create a ValidatingAdmissionPolicyBinding
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding> createAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // delete collection of ValidatingAdmissionPolicy
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAdmissionregistrationV1alpha1CollectionValidatingAdmissionPolicy({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAdmissionregistrationV1alpha1CollectionValidatingAdmissionPolicy', () async {
      // TODO
    });

    // delete collection of ValidatingAdmissionPolicyBinding
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAdmissionregistrationV1alpha1CollectionValidatingAdmissionPolicyBinding({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAdmissionregistrationV1alpha1CollectionValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // delete a ValidatingAdmissionPolicy
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAdmissionregistrationV1alpha1ValidatingAdmissionPolicy(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAdmissionregistrationV1alpha1ValidatingAdmissionPolicy', () async {
      // TODO
    });

    // delete a ValidatingAdmissionPolicyBinding
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getAdmissionregistrationV1alpha1APIResources() async
    test('test getAdmissionregistrationV1alpha1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind ValidatingAdmissionPolicy
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyList> listAdmissionregistrationV1alpha1ValidatingAdmissionPolicy({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listAdmissionregistrationV1alpha1ValidatingAdmissionPolicy', () async {
      // TODO
    });

    // list or watch objects of kind ValidatingAdmissionPolicyBinding
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList> listAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // partially update the specified ValidatingAdmissionPolicy
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy> patchAdmissionregistrationV1alpha1ValidatingAdmissionPolicy(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchAdmissionregistrationV1alpha1ValidatingAdmissionPolicy', () async {
      // TODO
    });

    // partially update the specified ValidatingAdmissionPolicyBinding
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding> patchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // read the specified ValidatingAdmissionPolicy
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy> readAdmissionregistrationV1alpha1ValidatingAdmissionPolicy(String name, { String pretty }) async
    test('test readAdmissionregistrationV1alpha1ValidatingAdmissionPolicy', () async {
      // TODO
    });

    // read the specified ValidatingAdmissionPolicyBinding
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding> readAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding(String name, { String pretty }) async
    test('test readAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // replace the specified ValidatingAdmissionPolicy
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy> replaceAdmissionregistrationV1alpha1ValidatingAdmissionPolicy(String name, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceAdmissionregistrationV1alpha1ValidatingAdmissionPolicy', () async {
      // TODO
    });

    // replace the specified ValidatingAdmissionPolicyBinding
    //
    //Future<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding> replaceAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding(String name, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // watch changes to an object of kind ValidatingAdmissionPolicy. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicy(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicy', () async {
      // TODO
    });

    // watch changes to an object of kind ValidatingAdmissionPolicyBinding. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding', () async {
      // TODO
    });

    // watch individual changes to a list of ValidatingAdmissionPolicyBinding. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList', () async {
      // TODO
    });

    // watch individual changes to a list of ValidatingAdmissionPolicy. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAdmissionregistrationV1alpha1ValidatingAdmissionPolicyList', () async {
      // TODO
    });

  });
}
