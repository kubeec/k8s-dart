import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for StorageV1Api
void main() {
  final instance = K8s().getStorageV1Api();

  group(StorageV1Api, () {
    // create a CSIDriver
    //
    //Future<IoK8sApiStorageV1CSIDriver> createStorageV1CSIDriver(IoK8sApiStorageV1CSIDriver body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createStorageV1CSIDriver', () async {
      // TODO
    });

    // create a CSINode
    //
    //Future<IoK8sApiStorageV1CSINode> createStorageV1CSINode(IoK8sApiStorageV1CSINode body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createStorageV1CSINode', () async {
      // TODO
    });

    // create a CSIStorageCapacity
    //
    //Future<IoK8sApiStorageV1CSIStorageCapacity> createStorageV1NamespacedCSIStorageCapacity(String namespace, IoK8sApiStorageV1CSIStorageCapacity body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createStorageV1NamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // create a StorageClass
    //
    //Future<IoK8sApiStorageV1StorageClass> createStorageV1StorageClass(IoK8sApiStorageV1StorageClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createStorageV1StorageClass', () async {
      // TODO
    });

    // create a VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> createStorageV1VolumeAttachment(IoK8sApiStorageV1VolumeAttachment body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createStorageV1VolumeAttachment', () async {
      // TODO
    });

    // delete a CSIDriver
    //
    //Future<IoK8sApiStorageV1CSIDriver> deleteStorageV1CSIDriver(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1CSIDriver', () async {
      // TODO
    });

    // delete a CSINode
    //
    //Future<IoK8sApiStorageV1CSINode> deleteStorageV1CSINode(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1CSINode', () async {
      // TODO
    });

    // delete collection of CSIDriver
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteStorageV1CollectionCSIDriver({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1CollectionCSIDriver', () async {
      // TODO
    });

    // delete collection of CSINode
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteStorageV1CollectionCSINode({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1CollectionCSINode', () async {
      // TODO
    });

    // delete collection of CSIStorageCapacity
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteStorageV1CollectionNamespacedCSIStorageCapacity(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1CollectionNamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // delete collection of StorageClass
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteStorageV1CollectionStorageClass({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1CollectionStorageClass', () async {
      // TODO
    });

    // delete collection of VolumeAttachment
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteStorageV1CollectionVolumeAttachment({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1CollectionVolumeAttachment', () async {
      // TODO
    });

    // delete a CSIStorageCapacity
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteStorageV1NamespacedCSIStorageCapacity(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1NamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // delete a StorageClass
    //
    //Future<IoK8sApiStorageV1StorageClass> deleteStorageV1StorageClass(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1StorageClass', () async {
      // TODO
    });

    // delete a VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> deleteStorageV1VolumeAttachment(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteStorageV1VolumeAttachment', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getStorageV1APIResources() async
    test('test getStorageV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind CSIDriver
    //
    //Future<IoK8sApiStorageV1CSIDriverList> listStorageV1CSIDriver({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listStorageV1CSIDriver', () async {
      // TODO
    });

    // list or watch objects of kind CSINode
    //
    //Future<IoK8sApiStorageV1CSINodeList> listStorageV1CSINode({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listStorageV1CSINode', () async {
      // TODO
    });

    // list or watch objects of kind CSIStorageCapacity
    //
    //Future<IoK8sApiStorageV1CSIStorageCapacityList> listStorageV1CSIStorageCapacityForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listStorageV1CSIStorageCapacityForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind CSIStorageCapacity
    //
    //Future<IoK8sApiStorageV1CSIStorageCapacityList> listStorageV1NamespacedCSIStorageCapacity(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listStorageV1NamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // list or watch objects of kind StorageClass
    //
    //Future<IoK8sApiStorageV1StorageClassList> listStorageV1StorageClass({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listStorageV1StorageClass', () async {
      // TODO
    });

    // list or watch objects of kind VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachmentList> listStorageV1VolumeAttachment({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listStorageV1VolumeAttachment', () async {
      // TODO
    });

    // partially update the specified CSIDriver
    //
    //Future<IoK8sApiStorageV1CSIDriver> patchStorageV1CSIDriver(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchStorageV1CSIDriver', () async {
      // TODO
    });

    // partially update the specified CSINode
    //
    //Future<IoK8sApiStorageV1CSINode> patchStorageV1CSINode(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchStorageV1CSINode', () async {
      // TODO
    });

    // partially update the specified CSIStorageCapacity
    //
    //Future<IoK8sApiStorageV1CSIStorageCapacity> patchStorageV1NamespacedCSIStorageCapacity(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchStorageV1NamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // partially update the specified StorageClass
    //
    //Future<IoK8sApiStorageV1StorageClass> patchStorageV1StorageClass(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchStorageV1StorageClass', () async {
      // TODO
    });

    // partially update the specified VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> patchStorageV1VolumeAttachment(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchStorageV1VolumeAttachment', () async {
      // TODO
    });

    // partially update status of the specified VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> patchStorageV1VolumeAttachmentStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchStorageV1VolumeAttachmentStatus', () async {
      // TODO
    });

    // read the specified CSIDriver
    //
    //Future<IoK8sApiStorageV1CSIDriver> readStorageV1CSIDriver(String name, { String pretty }) async
    test('test readStorageV1CSIDriver', () async {
      // TODO
    });

    // read the specified CSINode
    //
    //Future<IoK8sApiStorageV1CSINode> readStorageV1CSINode(String name, { String pretty }) async
    test('test readStorageV1CSINode', () async {
      // TODO
    });

    // read the specified CSIStorageCapacity
    //
    //Future<IoK8sApiStorageV1CSIStorageCapacity> readStorageV1NamespacedCSIStorageCapacity(String name, String namespace, { String pretty }) async
    test('test readStorageV1NamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // read the specified StorageClass
    //
    //Future<IoK8sApiStorageV1StorageClass> readStorageV1StorageClass(String name, { String pretty }) async
    test('test readStorageV1StorageClass', () async {
      // TODO
    });

    // read the specified VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> readStorageV1VolumeAttachment(String name, { String pretty }) async
    test('test readStorageV1VolumeAttachment', () async {
      // TODO
    });

    // read status of the specified VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> readStorageV1VolumeAttachmentStatus(String name, { String pretty }) async
    test('test readStorageV1VolumeAttachmentStatus', () async {
      // TODO
    });

    // replace the specified CSIDriver
    //
    //Future<IoK8sApiStorageV1CSIDriver> replaceStorageV1CSIDriver(String name, IoK8sApiStorageV1CSIDriver body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceStorageV1CSIDriver', () async {
      // TODO
    });

    // replace the specified CSINode
    //
    //Future<IoK8sApiStorageV1CSINode> replaceStorageV1CSINode(String name, IoK8sApiStorageV1CSINode body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceStorageV1CSINode', () async {
      // TODO
    });

    // replace the specified CSIStorageCapacity
    //
    //Future<IoK8sApiStorageV1CSIStorageCapacity> replaceStorageV1NamespacedCSIStorageCapacity(String name, String namespace, IoK8sApiStorageV1CSIStorageCapacity body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceStorageV1NamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // replace the specified StorageClass
    //
    //Future<IoK8sApiStorageV1StorageClass> replaceStorageV1StorageClass(String name, IoK8sApiStorageV1StorageClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceStorageV1StorageClass', () async {
      // TODO
    });

    // replace the specified VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> replaceStorageV1VolumeAttachment(String name, IoK8sApiStorageV1VolumeAttachment body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceStorageV1VolumeAttachment', () async {
      // TODO
    });

    // replace status of the specified VolumeAttachment
    //
    //Future<IoK8sApiStorageV1VolumeAttachment> replaceStorageV1VolumeAttachmentStatus(String name, IoK8sApiStorageV1VolumeAttachment body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceStorageV1VolumeAttachmentStatus', () async {
      // TODO
    });

    // watch changes to an object of kind CSIDriver. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1CSIDriver(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1CSIDriver', () async {
      // TODO
    });

    // watch individual changes to a list of CSIDriver. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1CSIDriverList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1CSIDriverList', () async {
      // TODO
    });

    // watch changes to an object of kind CSINode. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1CSINode(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1CSINode', () async {
      // TODO
    });

    // watch individual changes to a list of CSINode. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1CSINodeList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1CSINodeList', () async {
      // TODO
    });

    // watch individual changes to a list of CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1CSIStorageCapacityListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1CSIStorageCapacityListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1NamespacedCSIStorageCapacity(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1NamespacedCSIStorageCapacity', () async {
      // TODO
    });

    // watch individual changes to a list of CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1NamespacedCSIStorageCapacityList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1NamespacedCSIStorageCapacityList', () async {
      // TODO
    });

    // watch changes to an object of kind StorageClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1StorageClass(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1StorageClass', () async {
      // TODO
    });

    // watch individual changes to a list of StorageClass. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1StorageClassList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1StorageClassList', () async {
      // TODO
    });

    // watch changes to an object of kind VolumeAttachment. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1VolumeAttachment(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1VolumeAttachment', () async {
      // TODO
    });

    // watch individual changes to a list of VolumeAttachment. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchStorageV1VolumeAttachmentList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchStorageV1VolumeAttachmentList', () async {
      // TODO
    });

  });
}
