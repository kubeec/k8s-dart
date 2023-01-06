import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for DiscoveryV1Api
void main() {
  final instance = K8s().getDiscoveryV1Api();

  group(DiscoveryV1Api, () {
    // create an EndpointSlice
    //
    //Future<IoK8sApiDiscoveryV1EndpointSlice> createDiscoveryV1NamespacedEndpointSlice(String namespace, IoK8sApiDiscoveryV1EndpointSlice body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createDiscoveryV1NamespacedEndpointSlice', () async {
      // TODO
    });

    // delete collection of EndpointSlice
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteDiscoveryV1CollectionNamespacedEndpointSlice(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteDiscoveryV1CollectionNamespacedEndpointSlice', () async {
      // TODO
    });

    // delete an EndpointSlice
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteDiscoveryV1NamespacedEndpointSlice(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteDiscoveryV1NamespacedEndpointSlice', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getDiscoveryV1APIResources() async
    test('test getDiscoveryV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind EndpointSlice
    //
    //Future<IoK8sApiDiscoveryV1EndpointSliceList> listDiscoveryV1EndpointSliceForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listDiscoveryV1EndpointSliceForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind EndpointSlice
    //
    //Future<IoK8sApiDiscoveryV1EndpointSliceList> listDiscoveryV1NamespacedEndpointSlice(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listDiscoveryV1NamespacedEndpointSlice', () async {
      // TODO
    });

    // partially update the specified EndpointSlice
    //
    //Future<IoK8sApiDiscoveryV1EndpointSlice> patchDiscoveryV1NamespacedEndpointSlice(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchDiscoveryV1NamespacedEndpointSlice', () async {
      // TODO
    });

    // read the specified EndpointSlice
    //
    //Future<IoK8sApiDiscoveryV1EndpointSlice> readDiscoveryV1NamespacedEndpointSlice(String name, String namespace, { String pretty }) async
    test('test readDiscoveryV1NamespacedEndpointSlice', () async {
      // TODO
    });

    // replace the specified EndpointSlice
    //
    //Future<IoK8sApiDiscoveryV1EndpointSlice> replaceDiscoveryV1NamespacedEndpointSlice(String name, String namespace, IoK8sApiDiscoveryV1EndpointSlice body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceDiscoveryV1NamespacedEndpointSlice', () async {
      // TODO
    });

    // watch individual changes to a list of EndpointSlice. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchDiscoveryV1EndpointSliceListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchDiscoveryV1EndpointSliceListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind EndpointSlice. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchDiscoveryV1NamespacedEndpointSlice(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchDiscoveryV1NamespacedEndpointSlice', () async {
      // TODO
    });

    // watch individual changes to a list of EndpointSlice. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchDiscoveryV1NamespacedEndpointSliceList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchDiscoveryV1NamespacedEndpointSliceList', () async {
      // TODO
    });

  });
}
