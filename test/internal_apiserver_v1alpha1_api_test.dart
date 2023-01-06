import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for InternalApiserverV1alpha1Api
void main() {
  final instance = K8s().getInternalApiserverV1alpha1Api();

  group(InternalApiserverV1alpha1Api, () {
    // create a StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersion> createInternalApiserverV1alpha1StorageVersion(IoK8sApiApiserverinternalV1alpha1StorageVersion body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createInternalApiserverV1alpha1StorageVersion', () async {
      // TODO
    });

    // delete collection of StorageVersion
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteInternalApiserverV1alpha1CollectionStorageVersion({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteInternalApiserverV1alpha1CollectionStorageVersion', () async {
      // TODO
    });

    // delete a StorageVersion
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteInternalApiserverV1alpha1StorageVersion(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteInternalApiserverV1alpha1StorageVersion', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getInternalApiserverV1alpha1APIResources() async
    test('test getInternalApiserverV1alpha1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersionList> listInternalApiserverV1alpha1StorageVersion({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listInternalApiserverV1alpha1StorageVersion', () async {
      // TODO
    });

    // partially update the specified StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersion> patchInternalApiserverV1alpha1StorageVersion(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchInternalApiserverV1alpha1StorageVersion', () async {
      // TODO
    });

    // partially update status of the specified StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersion> patchInternalApiserverV1alpha1StorageVersionStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchInternalApiserverV1alpha1StorageVersionStatus', () async {
      // TODO
    });

    // read the specified StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersion> readInternalApiserverV1alpha1StorageVersion(String name, { String pretty }) async
    test('test readInternalApiserverV1alpha1StorageVersion', () async {
      // TODO
    });

    // read status of the specified StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersion> readInternalApiserverV1alpha1StorageVersionStatus(String name, { String pretty }) async
    test('test readInternalApiserverV1alpha1StorageVersionStatus', () async {
      // TODO
    });

    // replace the specified StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersion> replaceInternalApiserverV1alpha1StorageVersion(String name, IoK8sApiApiserverinternalV1alpha1StorageVersion body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceInternalApiserverV1alpha1StorageVersion', () async {
      // TODO
    });

    // replace status of the specified StorageVersion
    //
    //Future<IoK8sApiApiserverinternalV1alpha1StorageVersion> replaceInternalApiserverV1alpha1StorageVersionStatus(String name, IoK8sApiApiserverinternalV1alpha1StorageVersion body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceInternalApiserverV1alpha1StorageVersionStatus', () async {
      // TODO
    });

    // watch changes to an object of kind StorageVersion. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchInternalApiserverV1alpha1StorageVersion(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchInternalApiserverV1alpha1StorageVersion', () async {
      // TODO
    });

    // watch individual changes to a list of StorageVersion. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchInternalApiserverV1alpha1StorageVersionList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchInternalApiserverV1alpha1StorageVersionList', () async {
      // TODO
    });

  });
}
