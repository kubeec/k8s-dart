import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for CoordinationV1Api
void main() {
  final instance = K8s().getCoordinationV1Api();

  group(CoordinationV1Api, () {
    // create a Lease
    //
    //Future<IoK8sApiCoordinationV1Lease> createCoordinationV1NamespacedLease(String namespace, IoK8sApiCoordinationV1Lease body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoordinationV1NamespacedLease', () async {
      // TODO
    });

    // delete collection of Lease
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoordinationV1CollectionNamespacedLease(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoordinationV1CollectionNamespacedLease', () async {
      // TODO
    });

    // delete a Lease
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoordinationV1NamespacedLease(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoordinationV1NamespacedLease', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getCoordinationV1APIResources() async
    test('test getCoordinationV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind Lease
    //
    //Future<IoK8sApiCoordinationV1LeaseList> listCoordinationV1LeaseForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoordinationV1LeaseForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Lease
    //
    //Future<IoK8sApiCoordinationV1LeaseList> listCoordinationV1NamespacedLease(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoordinationV1NamespacedLease', () async {
      // TODO
    });

    // partially update the specified Lease
    //
    //Future<IoK8sApiCoordinationV1Lease> patchCoordinationV1NamespacedLease(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoordinationV1NamespacedLease', () async {
      // TODO
    });

    // read the specified Lease
    //
    //Future<IoK8sApiCoordinationV1Lease> readCoordinationV1NamespacedLease(String name, String namespace, { String pretty }) async
    test('test readCoordinationV1NamespacedLease', () async {
      // TODO
    });

    // replace the specified Lease
    //
    //Future<IoK8sApiCoordinationV1Lease> replaceCoordinationV1NamespacedLease(String name, String namespace, IoK8sApiCoordinationV1Lease body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoordinationV1NamespacedLease', () async {
      // TODO
    });

    // watch individual changes to a list of Lease. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoordinationV1LeaseListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoordinationV1LeaseListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind Lease. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoordinationV1NamespacedLease(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoordinationV1NamespacedLease', () async {
      // TODO
    });

    // watch individual changes to a list of Lease. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoordinationV1NamespacedLeaseList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoordinationV1NamespacedLeaseList', () async {
      // TODO
    });

  });
}
