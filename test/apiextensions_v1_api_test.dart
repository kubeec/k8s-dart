import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for ApiextensionsV1Api
void main() {
  final instance = K8s().getApiextensionsV1Api();

  group(ApiextensionsV1Api, () {
    // create a CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition> createApiextensionsV1CustomResourceDefinition(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createApiextensionsV1CustomResourceDefinition', () async {
      // TODO
    });

    // delete collection of CustomResourceDefinition
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteApiextensionsV1CollectionCustomResourceDefinition({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteApiextensionsV1CollectionCustomResourceDefinition', () async {
      // TODO
    });

    // delete a CustomResourceDefinition
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteApiextensionsV1CustomResourceDefinition(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteApiextensionsV1CustomResourceDefinition', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getApiextensionsV1APIResources() async
    test('test getApiextensionsV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionList> listApiextensionsV1CustomResourceDefinition({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listApiextensionsV1CustomResourceDefinition', () async {
      // TODO
    });

    // partially update the specified CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition> patchApiextensionsV1CustomResourceDefinition(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchApiextensionsV1CustomResourceDefinition', () async {
      // TODO
    });

    // partially update status of the specified CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition> patchApiextensionsV1CustomResourceDefinitionStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchApiextensionsV1CustomResourceDefinitionStatus', () async {
      // TODO
    });

    // read the specified CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition> readApiextensionsV1CustomResourceDefinition(String name, { String pretty }) async
    test('test readApiextensionsV1CustomResourceDefinition', () async {
      // TODO
    });

    // read status of the specified CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition> readApiextensionsV1CustomResourceDefinitionStatus(String name, { String pretty }) async
    test('test readApiextensionsV1CustomResourceDefinitionStatus', () async {
      // TODO
    });

    // replace the specified CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition> replaceApiextensionsV1CustomResourceDefinition(String name, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceApiextensionsV1CustomResourceDefinition', () async {
      // TODO
    });

    // replace status of the specified CustomResourceDefinition
    //
    //Future<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition> replaceApiextensionsV1CustomResourceDefinitionStatus(String name, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceApiextensionsV1CustomResourceDefinitionStatus', () async {
      // TODO
    });

    // watch changes to an object of kind CustomResourceDefinition. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchApiextensionsV1CustomResourceDefinition(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchApiextensionsV1CustomResourceDefinition', () async {
      // TODO
    });

    // watch individual changes to a list of CustomResourceDefinition. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchApiextensionsV1CustomResourceDefinitionList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchApiextensionsV1CustomResourceDefinitionList', () async {
      // TODO
    });

  });
}
