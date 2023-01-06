import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for ApiregistrationV1Api
void main() {
  final instance = K8s().getApiregistrationV1Api();

  group(ApiregistrationV1Api, () {
    // create an APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> createApiregistrationV1APIService(IoK8sKubeAggregatorPkgApisApiregistrationV1APIService body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createApiregistrationV1APIService', () async {
      // TODO
    });

    // delete an APIService
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteApiregistrationV1APIService(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteApiregistrationV1APIService', () async {
      // TODO
    });

    // delete collection of APIService
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteApiregistrationV1CollectionAPIService({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteApiregistrationV1CollectionAPIService', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getApiregistrationV1APIResources() async
    test('test getApiregistrationV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList> listApiregistrationV1APIService({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listApiregistrationV1APIService', () async {
      // TODO
    });

    // partially update the specified APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> patchApiregistrationV1APIService(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchApiregistrationV1APIService', () async {
      // TODO
    });

    // partially update status of the specified APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> patchApiregistrationV1APIServiceStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchApiregistrationV1APIServiceStatus', () async {
      // TODO
    });

    // read the specified APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> readApiregistrationV1APIService(String name, { String pretty }) async
    test('test readApiregistrationV1APIService', () async {
      // TODO
    });

    // read status of the specified APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> readApiregistrationV1APIServiceStatus(String name, { String pretty }) async
    test('test readApiregistrationV1APIServiceStatus', () async {
      // TODO
    });

    // replace the specified APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> replaceApiregistrationV1APIService(String name, IoK8sKubeAggregatorPkgApisApiregistrationV1APIService body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceApiregistrationV1APIService', () async {
      // TODO
    });

    // replace status of the specified APIService
    //
    //Future<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> replaceApiregistrationV1APIServiceStatus(String name, IoK8sKubeAggregatorPkgApisApiregistrationV1APIService body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceApiregistrationV1APIServiceStatus', () async {
      // TODO
    });

    // watch changes to an object of kind APIService. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchApiregistrationV1APIService(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchApiregistrationV1APIService', () async {
      // TODO
    });

    // watch individual changes to a list of APIService. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchApiregistrationV1APIServiceList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchApiregistrationV1APIServiceList', () async {
      // TODO
    });

  });
}
