import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for NetworkingV1alpha1Api
void main() {
  final instance = K8s().getNetworkingV1alpha1Api();

  group(NetworkingV1alpha1Api, () {
    // create a ClusterCIDR
    //
    //Future<IoK8sApiNetworkingV1alpha1ClusterCIDR> createNetworkingV1alpha1ClusterCIDR(IoK8sApiNetworkingV1alpha1ClusterCIDR body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createNetworkingV1alpha1ClusterCIDR', () async {
      // TODO
    });

    // delete a ClusterCIDR
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1alpha1ClusterCIDR(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1alpha1ClusterCIDR', () async {
      // TODO
    });

    // delete collection of ClusterCIDR
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1alpha1CollectionClusterCIDR({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1alpha1CollectionClusterCIDR', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getNetworkingV1alpha1APIResources() async
    test('test getNetworkingV1alpha1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind ClusterCIDR
    //
    //Future<IoK8sApiNetworkingV1alpha1ClusterCIDRList> listNetworkingV1alpha1ClusterCIDR({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listNetworkingV1alpha1ClusterCIDR', () async {
      // TODO
    });

    // partially update the specified ClusterCIDR
    //
    //Future<IoK8sApiNetworkingV1alpha1ClusterCIDR> patchNetworkingV1alpha1ClusterCIDR(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchNetworkingV1alpha1ClusterCIDR', () async {
      // TODO
    });

    // read the specified ClusterCIDR
    //
    //Future<IoK8sApiNetworkingV1alpha1ClusterCIDR> readNetworkingV1alpha1ClusterCIDR(String name, { String pretty }) async
    test('test readNetworkingV1alpha1ClusterCIDR', () async {
      // TODO
    });

    // replace the specified ClusterCIDR
    //
    //Future<IoK8sApiNetworkingV1alpha1ClusterCIDR> replaceNetworkingV1alpha1ClusterCIDR(String name, IoK8sApiNetworkingV1alpha1ClusterCIDR body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceNetworkingV1alpha1ClusterCIDR', () async {
      // TODO
    });

    // watch changes to an object of kind ClusterCIDR. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1alpha1ClusterCIDR(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1alpha1ClusterCIDR', () async {
      // TODO
    });

    // watch individual changes to a list of ClusterCIDR. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1alpha1ClusterCIDRList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1alpha1ClusterCIDRList', () async {
      // TODO
    });

  });
}
