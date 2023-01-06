import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for ResourceV1alpha1Api
void main() {
  final instance = K8s().getResourceV1alpha1Api();

  group(ResourceV1alpha1Api, () {
    // create a PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> createResourceV1alpha1NamespacedPodScheduling(String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createResourceV1alpha1NamespacedPodScheduling', () async {
      // TODO
    });

    // create a ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> createResourceV1alpha1NamespacedResourceClaim(String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createResourceV1alpha1NamespacedResourceClaim', () async {
      // TODO
    });

    // create a ResourceClaimTemplate
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate> createResourceV1alpha1NamespacedResourceClaimTemplate(String namespace, IoK8sApiResourceV1alpha1ResourceClaimTemplate body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createResourceV1alpha1NamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // create a ResourceClass
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClass> createResourceV1alpha1ResourceClass(IoK8sApiResourceV1alpha1ResourceClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createResourceV1alpha1ResourceClass', () async {
      // TODO
    });

    // delete collection of PodScheduling
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteResourceV1alpha1CollectionNamespacedPodScheduling(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1CollectionNamespacedPodScheduling', () async {
      // TODO
    });

    // delete collection of ResourceClaim
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteResourceV1alpha1CollectionNamespacedResourceClaim(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1CollectionNamespacedResourceClaim', () async {
      // TODO
    });

    // delete collection of ResourceClaimTemplate
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteResourceV1alpha1CollectionNamespacedResourceClaimTemplate(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1CollectionNamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // delete collection of ResourceClass
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteResourceV1alpha1CollectionResourceClass({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1CollectionResourceClass', () async {
      // TODO
    });

    // delete a PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> deleteResourceV1alpha1NamespacedPodScheduling(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1NamespacedPodScheduling', () async {
      // TODO
    });

    // delete a ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> deleteResourceV1alpha1NamespacedResourceClaim(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1NamespacedResourceClaim', () async {
      // TODO
    });

    // delete a ResourceClaimTemplate
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate> deleteResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1NamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // delete a ResourceClass
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClass> deleteResourceV1alpha1ResourceClass(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteResourceV1alpha1ResourceClass', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getResourceV1alpha1APIResources() async
    test('test getResourceV1alpha1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodSchedulingList> listResourceV1alpha1NamespacedPodScheduling(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listResourceV1alpha1NamespacedPodScheduling', () async {
      // TODO
    });

    // list or watch objects of kind ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimList> listResourceV1alpha1NamespacedResourceClaim(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listResourceV1alpha1NamespacedResourceClaim', () async {
      // TODO
    });

    // list or watch objects of kind ResourceClaimTemplate
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimTemplateList> listResourceV1alpha1NamespacedResourceClaimTemplate(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listResourceV1alpha1NamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // list or watch objects of kind PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodSchedulingList> listResourceV1alpha1PodSchedulingForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listResourceV1alpha1PodSchedulingForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimList> listResourceV1alpha1ResourceClaimForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listResourceV1alpha1ResourceClaimForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind ResourceClaimTemplate
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimTemplateList> listResourceV1alpha1ResourceClaimTemplateForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listResourceV1alpha1ResourceClaimTemplateForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind ResourceClass
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClassList> listResourceV1alpha1ResourceClass({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listResourceV1alpha1ResourceClass', () async {
      // TODO
    });

    // partially update the specified PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> patchResourceV1alpha1NamespacedPodScheduling(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchResourceV1alpha1NamespacedPodScheduling', () async {
      // TODO
    });

    // partially update status of the specified PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> patchResourceV1alpha1NamespacedPodSchedulingStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchResourceV1alpha1NamespacedPodSchedulingStatus', () async {
      // TODO
    });

    // partially update the specified ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> patchResourceV1alpha1NamespacedResourceClaim(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchResourceV1alpha1NamespacedResourceClaim', () async {
      // TODO
    });

    // partially update status of the specified ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> patchResourceV1alpha1NamespacedResourceClaimStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchResourceV1alpha1NamespacedResourceClaimStatus', () async {
      // TODO
    });

    // partially update the specified ResourceClaimTemplate
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate> patchResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchResourceV1alpha1NamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // partially update the specified ResourceClass
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClass> patchResourceV1alpha1ResourceClass(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchResourceV1alpha1ResourceClass', () async {
      // TODO
    });

    // read the specified PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> readResourceV1alpha1NamespacedPodScheduling(String name, String namespace, { String pretty }) async
    test('test readResourceV1alpha1NamespacedPodScheduling', () async {
      // TODO
    });

    // read status of the specified PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> readResourceV1alpha1NamespacedPodSchedulingStatus(String name, String namespace, { String pretty }) async
    test('test readResourceV1alpha1NamespacedPodSchedulingStatus', () async {
      // TODO
    });

    // read the specified ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> readResourceV1alpha1NamespacedResourceClaim(String name, String namespace, { String pretty }) async
    test('test readResourceV1alpha1NamespacedResourceClaim', () async {
      // TODO
    });

    // read status of the specified ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> readResourceV1alpha1NamespacedResourceClaimStatus(String name, String namespace, { String pretty }) async
    test('test readResourceV1alpha1NamespacedResourceClaimStatus', () async {
      // TODO
    });

    // read the specified ResourceClaimTemplate
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate> readResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, { String pretty }) async
    test('test readResourceV1alpha1NamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // read the specified ResourceClass
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClass> readResourceV1alpha1ResourceClass(String name, { String pretty }) async
    test('test readResourceV1alpha1ResourceClass', () async {
      // TODO
    });

    // replace the specified PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> replaceResourceV1alpha1NamespacedPodScheduling(String name, String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceResourceV1alpha1NamespacedPodScheduling', () async {
      // TODO
    });

    // replace status of the specified PodScheduling
    //
    //Future<IoK8sApiResourceV1alpha1PodScheduling> replaceResourceV1alpha1NamespacedPodSchedulingStatus(String name, String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceResourceV1alpha1NamespacedPodSchedulingStatus', () async {
      // TODO
    });

    // replace the specified ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> replaceResourceV1alpha1NamespacedResourceClaim(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceResourceV1alpha1NamespacedResourceClaim', () async {
      // TODO
    });

    // replace status of the specified ResourceClaim
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaim> replaceResourceV1alpha1NamespacedResourceClaimStatus(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceResourceV1alpha1NamespacedResourceClaimStatus', () async {
      // TODO
    });

    // replace the specified ResourceClaimTemplate
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate> replaceResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaimTemplate body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceResourceV1alpha1NamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // replace the specified ResourceClass
    //
    //Future<IoK8sApiResourceV1alpha1ResourceClass> replaceResourceV1alpha1ResourceClass(String name, IoK8sApiResourceV1alpha1ResourceClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceResourceV1alpha1ResourceClass', () async {
      // TODO
    });

    // watch changes to an object of kind PodScheduling. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1NamespacedPodScheduling(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1NamespacedPodScheduling', () async {
      // TODO
    });

    // watch individual changes to a list of PodScheduling. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1NamespacedPodSchedulingList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1NamespacedPodSchedulingList', () async {
      // TODO
    });

    // watch changes to an object of kind ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1NamespacedResourceClaim(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1NamespacedResourceClaim', () async {
      // TODO
    });

    // watch individual changes to a list of ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1NamespacedResourceClaimList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1NamespacedResourceClaimList', () async {
      // TODO
    });

    // watch changes to an object of kind ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1NamespacedResourceClaimTemplate', () async {
      // TODO
    });

    // watch individual changes to a list of ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1NamespacedResourceClaimTemplateList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1NamespacedResourceClaimTemplateList', () async {
      // TODO
    });

    // watch individual changes to a list of PodScheduling. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1PodSchedulingListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1PodSchedulingListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1ResourceClaimListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1ResourceClaimListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1ResourceClaimTemplateListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1ResourceClaimTemplateListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind ResourceClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1ResourceClass(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1ResourceClass', () async {
      // TODO
    });

    // watch individual changes to a list of ResourceClass. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchResourceV1alpha1ResourceClassList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchResourceV1alpha1ResourceClassList', () async {
      // TODO
    });

  });
}
