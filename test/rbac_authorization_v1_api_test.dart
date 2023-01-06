import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for RbacAuthorizationV1Api
void main() {
  final instance = K8s().getRbacAuthorizationV1Api();

  group(RbacAuthorizationV1Api, () {
    // create a ClusterRole
    //
    //Future<IoK8sApiRbacV1ClusterRole> createRbacAuthorizationV1ClusterRole(IoK8sApiRbacV1ClusterRole body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createRbacAuthorizationV1ClusterRole', () async {
      // TODO
    });

    // create a ClusterRoleBinding
    //
    //Future<IoK8sApiRbacV1ClusterRoleBinding> createRbacAuthorizationV1ClusterRoleBinding(IoK8sApiRbacV1ClusterRoleBinding body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createRbacAuthorizationV1ClusterRoleBinding', () async {
      // TODO
    });

    // create a Role
    //
    //Future<IoK8sApiRbacV1Role> createRbacAuthorizationV1NamespacedRole(String namespace, IoK8sApiRbacV1Role body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createRbacAuthorizationV1NamespacedRole', () async {
      // TODO
    });

    // create a RoleBinding
    //
    //Future<IoK8sApiRbacV1RoleBinding> createRbacAuthorizationV1NamespacedRoleBinding(String namespace, IoK8sApiRbacV1RoleBinding body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createRbacAuthorizationV1NamespacedRoleBinding', () async {
      // TODO
    });

    // delete a ClusterRole
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1ClusterRole(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1ClusterRole', () async {
      // TODO
    });

    // delete a ClusterRoleBinding
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1ClusterRoleBinding(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1ClusterRoleBinding', () async {
      // TODO
    });

    // delete collection of ClusterRole
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1CollectionClusterRole({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1CollectionClusterRole', () async {
      // TODO
    });

    // delete collection of ClusterRoleBinding
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1CollectionClusterRoleBinding({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1CollectionClusterRoleBinding', () async {
      // TODO
    });

    // delete collection of Role
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1CollectionNamespacedRole(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1CollectionNamespacedRole', () async {
      // TODO
    });

    // delete collection of RoleBinding
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1CollectionNamespacedRoleBinding(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1CollectionNamespacedRoleBinding', () async {
      // TODO
    });

    // delete a Role
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1NamespacedRole(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1NamespacedRole', () async {
      // TODO
    });

    // delete a RoleBinding
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteRbacAuthorizationV1NamespacedRoleBinding(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteRbacAuthorizationV1NamespacedRoleBinding', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getRbacAuthorizationV1APIResources() async
    test('test getRbacAuthorizationV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind ClusterRole
    //
    //Future<IoK8sApiRbacV1ClusterRoleList> listRbacAuthorizationV1ClusterRole({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listRbacAuthorizationV1ClusterRole', () async {
      // TODO
    });

    // list or watch objects of kind ClusterRoleBinding
    //
    //Future<IoK8sApiRbacV1ClusterRoleBindingList> listRbacAuthorizationV1ClusterRoleBinding({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listRbacAuthorizationV1ClusterRoleBinding', () async {
      // TODO
    });

    // list or watch objects of kind Role
    //
    //Future<IoK8sApiRbacV1RoleList> listRbacAuthorizationV1NamespacedRole(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listRbacAuthorizationV1NamespacedRole', () async {
      // TODO
    });

    // list or watch objects of kind RoleBinding
    //
    //Future<IoK8sApiRbacV1RoleBindingList> listRbacAuthorizationV1NamespacedRoleBinding(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listRbacAuthorizationV1NamespacedRoleBinding', () async {
      // TODO
    });

    // list or watch objects of kind RoleBinding
    //
    //Future<IoK8sApiRbacV1RoleBindingList> listRbacAuthorizationV1RoleBindingForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listRbacAuthorizationV1RoleBindingForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Role
    //
    //Future<IoK8sApiRbacV1RoleList> listRbacAuthorizationV1RoleForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listRbacAuthorizationV1RoleForAllNamespaces', () async {
      // TODO
    });

    // partially update the specified ClusterRole
    //
    //Future<IoK8sApiRbacV1ClusterRole> patchRbacAuthorizationV1ClusterRole(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchRbacAuthorizationV1ClusterRole', () async {
      // TODO
    });

    // partially update the specified ClusterRoleBinding
    //
    //Future<IoK8sApiRbacV1ClusterRoleBinding> patchRbacAuthorizationV1ClusterRoleBinding(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchRbacAuthorizationV1ClusterRoleBinding', () async {
      // TODO
    });

    // partially update the specified Role
    //
    //Future<IoK8sApiRbacV1Role> patchRbacAuthorizationV1NamespacedRole(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchRbacAuthorizationV1NamespacedRole', () async {
      // TODO
    });

    // partially update the specified RoleBinding
    //
    //Future<IoK8sApiRbacV1RoleBinding> patchRbacAuthorizationV1NamespacedRoleBinding(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchRbacAuthorizationV1NamespacedRoleBinding', () async {
      // TODO
    });

    // read the specified ClusterRole
    //
    //Future<IoK8sApiRbacV1ClusterRole> readRbacAuthorizationV1ClusterRole(String name, { String pretty }) async
    test('test readRbacAuthorizationV1ClusterRole', () async {
      // TODO
    });

    // read the specified ClusterRoleBinding
    //
    //Future<IoK8sApiRbacV1ClusterRoleBinding> readRbacAuthorizationV1ClusterRoleBinding(String name, { String pretty }) async
    test('test readRbacAuthorizationV1ClusterRoleBinding', () async {
      // TODO
    });

    // read the specified Role
    //
    //Future<IoK8sApiRbacV1Role> readRbacAuthorizationV1NamespacedRole(String name, String namespace, { String pretty }) async
    test('test readRbacAuthorizationV1NamespacedRole', () async {
      // TODO
    });

    // read the specified RoleBinding
    //
    //Future<IoK8sApiRbacV1RoleBinding> readRbacAuthorizationV1NamespacedRoleBinding(String name, String namespace, { String pretty }) async
    test('test readRbacAuthorizationV1NamespacedRoleBinding', () async {
      // TODO
    });

    // replace the specified ClusterRole
    //
    //Future<IoK8sApiRbacV1ClusterRole> replaceRbacAuthorizationV1ClusterRole(String name, IoK8sApiRbacV1ClusterRole body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceRbacAuthorizationV1ClusterRole', () async {
      // TODO
    });

    // replace the specified ClusterRoleBinding
    //
    //Future<IoK8sApiRbacV1ClusterRoleBinding> replaceRbacAuthorizationV1ClusterRoleBinding(String name, IoK8sApiRbacV1ClusterRoleBinding body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceRbacAuthorizationV1ClusterRoleBinding', () async {
      // TODO
    });

    // replace the specified Role
    //
    //Future<IoK8sApiRbacV1Role> replaceRbacAuthorizationV1NamespacedRole(String name, String namespace, IoK8sApiRbacV1Role body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceRbacAuthorizationV1NamespacedRole', () async {
      // TODO
    });

    // replace the specified RoleBinding
    //
    //Future<IoK8sApiRbacV1RoleBinding> replaceRbacAuthorizationV1NamespacedRoleBinding(String name, String namespace, IoK8sApiRbacV1RoleBinding body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceRbacAuthorizationV1NamespacedRoleBinding', () async {
      // TODO
    });

    // watch changes to an object of kind ClusterRole. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1ClusterRole(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1ClusterRole', () async {
      // TODO
    });

    // watch changes to an object of kind ClusterRoleBinding. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1ClusterRoleBinding(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1ClusterRoleBinding', () async {
      // TODO
    });

    // watch individual changes to a list of ClusterRoleBinding. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1ClusterRoleBindingList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1ClusterRoleBindingList', () async {
      // TODO
    });

    // watch individual changes to a list of ClusterRole. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1ClusterRoleList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1ClusterRoleList', () async {
      // TODO
    });

    // watch changes to an object of kind Role. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1NamespacedRole(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1NamespacedRole', () async {
      // TODO
    });

    // watch changes to an object of kind RoleBinding. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1NamespacedRoleBinding(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1NamespacedRoleBinding', () async {
      // TODO
    });

    // watch individual changes to a list of RoleBinding. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1NamespacedRoleBindingList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1NamespacedRoleBindingList', () async {
      // TODO
    });

    // watch individual changes to a list of Role. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1NamespacedRoleList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1NamespacedRoleList', () async {
      // TODO
    });

    // watch individual changes to a list of RoleBinding. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1RoleBindingListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1RoleBindingListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of Role. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchRbacAuthorizationV1RoleListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchRbacAuthorizationV1RoleListForAllNamespaces', () async {
      // TODO
    });

  });
}
