import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for NodeV1Api
void main() {
  final instance = K8s().getNodeV1Api();

  group(NodeV1Api, () {
    // create a RuntimeClass
    //
    //Future<IoK8sApiNodeV1RuntimeClass> createNodeV1RuntimeClass(IoK8sApiNodeV1RuntimeClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createNodeV1RuntimeClass', () async {
      // TODO
    });

    // delete collection of RuntimeClass
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNodeV1CollectionRuntimeClass({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNodeV1CollectionRuntimeClass', () async {
      // TODO
    });

    // delete a RuntimeClass
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNodeV1RuntimeClass(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNodeV1RuntimeClass', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getNodeV1APIResources() async
    test('test getNodeV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind RuntimeClass
    //
    //Future<IoK8sApiNodeV1RuntimeClassList> listNodeV1RuntimeClass({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listNodeV1RuntimeClass', () async {
      // TODO
    });

    // partially update the specified RuntimeClass
    //
    //Future<IoK8sApiNodeV1RuntimeClass> patchNodeV1RuntimeClass(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchNodeV1RuntimeClass', () async {
      // TODO
    });

    // read the specified RuntimeClass
    //
    //Future<IoK8sApiNodeV1RuntimeClass> readNodeV1RuntimeClass(String name, { String pretty }) async
    test('test readNodeV1RuntimeClass', () async {
      // TODO
    });

    // replace the specified RuntimeClass
    //
    //Future<IoK8sApiNodeV1RuntimeClass> replaceNodeV1RuntimeClass(String name, IoK8sApiNodeV1RuntimeClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceNodeV1RuntimeClass', () async {
      // TODO
    });

    // watch changes to an object of kind RuntimeClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNodeV1RuntimeClass(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNodeV1RuntimeClass', () async {
      // TODO
    });

    // watch individual changes to a list of RuntimeClass. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNodeV1RuntimeClassList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNodeV1RuntimeClassList', () async {
      // TODO
    });

  });
}
