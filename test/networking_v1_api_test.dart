import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for NetworkingV1Api
void main() {
  final instance = K8s().getNetworkingV1Api();

  group(NetworkingV1Api, () {
    // create an IngressClass
    //
    //Future<IoK8sApiNetworkingV1IngressClass> createNetworkingV1IngressClass(IoK8sApiNetworkingV1IngressClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createNetworkingV1IngressClass', () async {
      // TODO
    });

    // create an Ingress
    //
    //Future<IoK8sApiNetworkingV1Ingress> createNetworkingV1NamespacedIngress(String namespace, IoK8sApiNetworkingV1Ingress body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createNetworkingV1NamespacedIngress', () async {
      // TODO
    });

    // create a NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicy> createNetworkingV1NamespacedNetworkPolicy(String namespace, IoK8sApiNetworkingV1NetworkPolicy body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createNetworkingV1NamespacedNetworkPolicy', () async {
      // TODO
    });

    // delete collection of IngressClass
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1CollectionIngressClass({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1CollectionIngressClass', () async {
      // TODO
    });

    // delete collection of Ingress
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1CollectionNamespacedIngress(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1CollectionNamespacedIngress', () async {
      // TODO
    });

    // delete collection of NetworkPolicy
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1CollectionNamespacedNetworkPolicy(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1CollectionNamespacedNetworkPolicy', () async {
      // TODO
    });

    // delete an IngressClass
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1IngressClass(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1IngressClass', () async {
      // TODO
    });

    // delete an Ingress
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1NamespacedIngress(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1NamespacedIngress', () async {
      // TODO
    });

    // delete a NetworkPolicy
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteNetworkingV1NamespacedNetworkPolicy(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteNetworkingV1NamespacedNetworkPolicy', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getNetworkingV1APIResources() async
    test('test getNetworkingV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind IngressClass
    //
    //Future<IoK8sApiNetworkingV1IngressClassList> listNetworkingV1IngressClass({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listNetworkingV1IngressClass', () async {
      // TODO
    });

    // list or watch objects of kind Ingress
    //
    //Future<IoK8sApiNetworkingV1IngressList> listNetworkingV1IngressForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listNetworkingV1IngressForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Ingress
    //
    //Future<IoK8sApiNetworkingV1IngressList> listNetworkingV1NamespacedIngress(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listNetworkingV1NamespacedIngress', () async {
      // TODO
    });

    // list or watch objects of kind NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicyList> listNetworkingV1NamespacedNetworkPolicy(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listNetworkingV1NamespacedNetworkPolicy', () async {
      // TODO
    });

    // list or watch objects of kind NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicyList> listNetworkingV1NetworkPolicyForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listNetworkingV1NetworkPolicyForAllNamespaces', () async {
      // TODO
    });

    // partially update the specified IngressClass
    //
    //Future<IoK8sApiNetworkingV1IngressClass> patchNetworkingV1IngressClass(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchNetworkingV1IngressClass', () async {
      // TODO
    });

    // partially update the specified Ingress
    //
    //Future<IoK8sApiNetworkingV1Ingress> patchNetworkingV1NamespacedIngress(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchNetworkingV1NamespacedIngress', () async {
      // TODO
    });

    // partially update status of the specified Ingress
    //
    //Future<IoK8sApiNetworkingV1Ingress> patchNetworkingV1NamespacedIngressStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchNetworkingV1NamespacedIngressStatus', () async {
      // TODO
    });

    // partially update the specified NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicy> patchNetworkingV1NamespacedNetworkPolicy(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchNetworkingV1NamespacedNetworkPolicy', () async {
      // TODO
    });

    // partially update status of the specified NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicy> patchNetworkingV1NamespacedNetworkPolicyStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchNetworkingV1NamespacedNetworkPolicyStatus', () async {
      // TODO
    });

    // read the specified IngressClass
    //
    //Future<IoK8sApiNetworkingV1IngressClass> readNetworkingV1IngressClass(String name, { String pretty }) async
    test('test readNetworkingV1IngressClass', () async {
      // TODO
    });

    // read the specified Ingress
    //
    //Future<IoK8sApiNetworkingV1Ingress> readNetworkingV1NamespacedIngress(String name, String namespace, { String pretty }) async
    test('test readNetworkingV1NamespacedIngress', () async {
      // TODO
    });

    // read status of the specified Ingress
    //
    //Future<IoK8sApiNetworkingV1Ingress> readNetworkingV1NamespacedIngressStatus(String name, String namespace, { String pretty }) async
    test('test readNetworkingV1NamespacedIngressStatus', () async {
      // TODO
    });

    // read the specified NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicy> readNetworkingV1NamespacedNetworkPolicy(String name, String namespace, { String pretty }) async
    test('test readNetworkingV1NamespacedNetworkPolicy', () async {
      // TODO
    });

    // read status of the specified NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicy> readNetworkingV1NamespacedNetworkPolicyStatus(String name, String namespace, { String pretty }) async
    test('test readNetworkingV1NamespacedNetworkPolicyStatus', () async {
      // TODO
    });

    // replace the specified IngressClass
    //
    //Future<IoK8sApiNetworkingV1IngressClass> replaceNetworkingV1IngressClass(String name, IoK8sApiNetworkingV1IngressClass body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceNetworkingV1IngressClass', () async {
      // TODO
    });

    // replace the specified Ingress
    //
    //Future<IoK8sApiNetworkingV1Ingress> replaceNetworkingV1NamespacedIngress(String name, String namespace, IoK8sApiNetworkingV1Ingress body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceNetworkingV1NamespacedIngress', () async {
      // TODO
    });

    // replace status of the specified Ingress
    //
    //Future<IoK8sApiNetworkingV1Ingress> replaceNetworkingV1NamespacedIngressStatus(String name, String namespace, IoK8sApiNetworkingV1Ingress body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceNetworkingV1NamespacedIngressStatus', () async {
      // TODO
    });

    // replace the specified NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicy> replaceNetworkingV1NamespacedNetworkPolicy(String name, String namespace, IoK8sApiNetworkingV1NetworkPolicy body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceNetworkingV1NamespacedNetworkPolicy', () async {
      // TODO
    });

    // replace status of the specified NetworkPolicy
    //
    //Future<IoK8sApiNetworkingV1NetworkPolicy> replaceNetworkingV1NamespacedNetworkPolicyStatus(String name, String namespace, IoK8sApiNetworkingV1NetworkPolicy body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceNetworkingV1NamespacedNetworkPolicyStatus', () async {
      // TODO
    });

    // watch changes to an object of kind IngressClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1IngressClass(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1IngressClass', () async {
      // TODO
    });

    // watch individual changes to a list of IngressClass. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1IngressClassList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1IngressClassList', () async {
      // TODO
    });

    // watch individual changes to a list of Ingress. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1IngressListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1IngressListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind Ingress. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1NamespacedIngress(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1NamespacedIngress', () async {
      // TODO
    });

    // watch individual changes to a list of Ingress. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1NamespacedIngressList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1NamespacedIngressList', () async {
      // TODO
    });

    // watch changes to an object of kind NetworkPolicy. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1NamespacedNetworkPolicy(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1NamespacedNetworkPolicy', () async {
      // TODO
    });

    // watch individual changes to a list of NetworkPolicy. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1NamespacedNetworkPolicyList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1NamespacedNetworkPolicyList', () async {
      // TODO
    });

    // watch individual changes to a list of NetworkPolicy. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchNetworkingV1NetworkPolicyListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchNetworkingV1NetworkPolicyListForAllNamespaces', () async {
      // TODO
    });

  });
}
