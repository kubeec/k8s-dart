import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for BatchV1Api
void main() {
  final instance = K8s().getBatchV1Api();

  group(BatchV1Api, () {
    // create a CronJob
    //
    //Future<IoK8sApiBatchV1CronJob> createBatchV1NamespacedCronJob(String namespace, IoK8sApiBatchV1CronJob body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createBatchV1NamespacedCronJob', () async {
      // TODO
    });

    // create a Job
    //
    //Future<IoK8sApiBatchV1Job> createBatchV1NamespacedJob(String namespace, IoK8sApiBatchV1Job body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createBatchV1NamespacedJob', () async {
      // TODO
    });

    // delete collection of CronJob
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteBatchV1CollectionNamespacedCronJob(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteBatchV1CollectionNamespacedCronJob', () async {
      // TODO
    });

    // delete collection of Job
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteBatchV1CollectionNamespacedJob(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteBatchV1CollectionNamespacedJob', () async {
      // TODO
    });

    // delete a CronJob
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteBatchV1NamespacedCronJob(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteBatchV1NamespacedCronJob', () async {
      // TODO
    });

    // delete a Job
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteBatchV1NamespacedJob(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteBatchV1NamespacedJob', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getBatchV1APIResources() async
    test('test getBatchV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind CronJob
    //
    //Future<IoK8sApiBatchV1CronJobList> listBatchV1CronJobForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listBatchV1CronJobForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Job
    //
    //Future<IoK8sApiBatchV1JobList> listBatchV1JobForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listBatchV1JobForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind CronJob
    //
    //Future<IoK8sApiBatchV1CronJobList> listBatchV1NamespacedCronJob(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listBatchV1NamespacedCronJob', () async {
      // TODO
    });

    // list or watch objects of kind Job
    //
    //Future<IoK8sApiBatchV1JobList> listBatchV1NamespacedJob(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listBatchV1NamespacedJob', () async {
      // TODO
    });

    // partially update the specified CronJob
    //
    //Future<IoK8sApiBatchV1CronJob> patchBatchV1NamespacedCronJob(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchBatchV1NamespacedCronJob', () async {
      // TODO
    });

    // partially update status of the specified CronJob
    //
    //Future<IoK8sApiBatchV1CronJob> patchBatchV1NamespacedCronJobStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchBatchV1NamespacedCronJobStatus', () async {
      // TODO
    });

    // partially update the specified Job
    //
    //Future<IoK8sApiBatchV1Job> patchBatchV1NamespacedJob(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchBatchV1NamespacedJob', () async {
      // TODO
    });

    // partially update status of the specified Job
    //
    //Future<IoK8sApiBatchV1Job> patchBatchV1NamespacedJobStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchBatchV1NamespacedJobStatus', () async {
      // TODO
    });

    // read the specified CronJob
    //
    //Future<IoK8sApiBatchV1CronJob> readBatchV1NamespacedCronJob(String name, String namespace, { String pretty }) async
    test('test readBatchV1NamespacedCronJob', () async {
      // TODO
    });

    // read status of the specified CronJob
    //
    //Future<IoK8sApiBatchV1CronJob> readBatchV1NamespacedCronJobStatus(String name, String namespace, { String pretty }) async
    test('test readBatchV1NamespacedCronJobStatus', () async {
      // TODO
    });

    // read the specified Job
    //
    //Future<IoK8sApiBatchV1Job> readBatchV1NamespacedJob(String name, String namespace, { String pretty }) async
    test('test readBatchV1NamespacedJob', () async {
      // TODO
    });

    // read status of the specified Job
    //
    //Future<IoK8sApiBatchV1Job> readBatchV1NamespacedJobStatus(String name, String namespace, { String pretty }) async
    test('test readBatchV1NamespacedJobStatus', () async {
      // TODO
    });

    // replace the specified CronJob
    //
    //Future<IoK8sApiBatchV1CronJob> replaceBatchV1NamespacedCronJob(String name, String namespace, IoK8sApiBatchV1CronJob body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceBatchV1NamespacedCronJob', () async {
      // TODO
    });

    // replace status of the specified CronJob
    //
    //Future<IoK8sApiBatchV1CronJob> replaceBatchV1NamespacedCronJobStatus(String name, String namespace, IoK8sApiBatchV1CronJob body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceBatchV1NamespacedCronJobStatus', () async {
      // TODO
    });

    // replace the specified Job
    //
    //Future<IoK8sApiBatchV1Job> replaceBatchV1NamespacedJob(String name, String namespace, IoK8sApiBatchV1Job body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceBatchV1NamespacedJob', () async {
      // TODO
    });

    // replace status of the specified Job
    //
    //Future<IoK8sApiBatchV1Job> replaceBatchV1NamespacedJobStatus(String name, String namespace, IoK8sApiBatchV1Job body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceBatchV1NamespacedJobStatus', () async {
      // TODO
    });

    // watch individual changes to a list of CronJob. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchBatchV1CronJobListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchBatchV1CronJobListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of Job. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchBatchV1JobListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchBatchV1JobListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind CronJob. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchBatchV1NamespacedCronJob(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchBatchV1NamespacedCronJob', () async {
      // TODO
    });

    // watch individual changes to a list of CronJob. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchBatchV1NamespacedCronJobList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchBatchV1NamespacedCronJobList', () async {
      // TODO
    });

    // watch changes to an object of kind Job. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchBatchV1NamespacedJob(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchBatchV1NamespacedJob', () async {
      // TODO
    });

    // watch individual changes to a list of Job. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchBatchV1NamespacedJobList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchBatchV1NamespacedJobList', () async {
      // TODO
    });

  });
}
