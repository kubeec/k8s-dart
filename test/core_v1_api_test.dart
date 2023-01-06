import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for CoreV1Api
void main() {
  final instance = K8s().getCoreV1Api();

  group(CoreV1Api, () {
    // connect DELETE requests to proxy of Pod
    //
    //Future<String> connectCoreV1DeleteNamespacedPodProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1DeleteNamespacedPodProxy', () async {
      // TODO
    });

    // connect DELETE requests to proxy of Pod
    //
    //Future<String> connectCoreV1DeleteNamespacedPodProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1DeleteNamespacedPodProxyWithPath', () async {
      // TODO
    });

    // connect DELETE requests to proxy of Service
    //
    //Future<String> connectCoreV1DeleteNamespacedServiceProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1DeleteNamespacedServiceProxy', () async {
      // TODO
    });

    // connect DELETE requests to proxy of Service
    //
    //Future<String> connectCoreV1DeleteNamespacedServiceProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1DeleteNamespacedServiceProxyWithPath', () async {
      // TODO
    });

    // connect DELETE requests to proxy of Node
    //
    //Future<String> connectCoreV1DeleteNodeProxy(String name, { String path }) async
    test('test connectCoreV1DeleteNodeProxy', () async {
      // TODO
    });

    // connect DELETE requests to proxy of Node
    //
    //Future<String> connectCoreV1DeleteNodeProxyWithPath(String name, String path, { String path2 }) async
    test('test connectCoreV1DeleteNodeProxyWithPath', () async {
      // TODO
    });

    // connect GET requests to attach of Pod
    //
    //Future<String> connectCoreV1GetNamespacedPodAttach(String name, String namespace, { String container, bool stderr, bool stdin, bool stdout, bool tty }) async
    test('test connectCoreV1GetNamespacedPodAttach', () async {
      // TODO
    });

    // connect GET requests to exec of Pod
    //
    //Future<String> connectCoreV1GetNamespacedPodExec(String name, String namespace, { String command, String container, bool stderr, bool stdin, bool stdout, bool tty }) async
    test('test connectCoreV1GetNamespacedPodExec', () async {
      // TODO
    });

    // connect GET requests to portforward of Pod
    //
    //Future<String> connectCoreV1GetNamespacedPodPortforward(String name, String namespace, { int ports }) async
    test('test connectCoreV1GetNamespacedPodPortforward', () async {
      // TODO
    });

    // connect GET requests to proxy of Pod
    //
    //Future<String> connectCoreV1GetNamespacedPodProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1GetNamespacedPodProxy', () async {
      // TODO
    });

    // connect GET requests to proxy of Pod
    //
    //Future<String> connectCoreV1GetNamespacedPodProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1GetNamespacedPodProxyWithPath', () async {
      // TODO
    });

    // connect GET requests to proxy of Service
    //
    //Future<String> connectCoreV1GetNamespacedServiceProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1GetNamespacedServiceProxy', () async {
      // TODO
    });

    // connect GET requests to proxy of Service
    //
    //Future<String> connectCoreV1GetNamespacedServiceProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1GetNamespacedServiceProxyWithPath', () async {
      // TODO
    });

    // connect GET requests to proxy of Node
    //
    //Future<String> connectCoreV1GetNodeProxy(String name, { String path }) async
    test('test connectCoreV1GetNodeProxy', () async {
      // TODO
    });

    // connect GET requests to proxy of Node
    //
    //Future<String> connectCoreV1GetNodeProxyWithPath(String name, String path, { String path2 }) async
    test('test connectCoreV1GetNodeProxyWithPath', () async {
      // TODO
    });

    // connect HEAD requests to proxy of Pod
    //
    //Future<String> connectCoreV1HeadNamespacedPodProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1HeadNamespacedPodProxy', () async {
      // TODO
    });

    // connect HEAD requests to proxy of Pod
    //
    //Future<String> connectCoreV1HeadNamespacedPodProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1HeadNamespacedPodProxyWithPath', () async {
      // TODO
    });

    // connect HEAD requests to proxy of Service
    //
    //Future<String> connectCoreV1HeadNamespacedServiceProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1HeadNamespacedServiceProxy', () async {
      // TODO
    });

    // connect HEAD requests to proxy of Service
    //
    //Future<String> connectCoreV1HeadNamespacedServiceProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1HeadNamespacedServiceProxyWithPath', () async {
      // TODO
    });

    // connect HEAD requests to proxy of Node
    //
    //Future<String> connectCoreV1HeadNodeProxy(String name, { String path }) async
    test('test connectCoreV1HeadNodeProxy', () async {
      // TODO
    });

    // connect HEAD requests to proxy of Node
    //
    //Future<String> connectCoreV1HeadNodeProxyWithPath(String name, String path, { String path2 }) async
    test('test connectCoreV1HeadNodeProxyWithPath', () async {
      // TODO
    });

    // connect OPTIONS requests to proxy of Pod
    //
    //Future<String> connectCoreV1OptionsNamespacedPodProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1OptionsNamespacedPodProxy', () async {
      // TODO
    });

    // connect OPTIONS requests to proxy of Pod
    //
    //Future<String> connectCoreV1OptionsNamespacedPodProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1OptionsNamespacedPodProxyWithPath', () async {
      // TODO
    });

    // connect OPTIONS requests to proxy of Service
    //
    //Future<String> connectCoreV1OptionsNamespacedServiceProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1OptionsNamespacedServiceProxy', () async {
      // TODO
    });

    // connect OPTIONS requests to proxy of Service
    //
    //Future<String> connectCoreV1OptionsNamespacedServiceProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1OptionsNamespacedServiceProxyWithPath', () async {
      // TODO
    });

    // connect OPTIONS requests to proxy of Node
    //
    //Future<String> connectCoreV1OptionsNodeProxy(String name, { String path }) async
    test('test connectCoreV1OptionsNodeProxy', () async {
      // TODO
    });

    // connect OPTIONS requests to proxy of Node
    //
    //Future<String> connectCoreV1OptionsNodeProxyWithPath(String name, String path, { String path2 }) async
    test('test connectCoreV1OptionsNodeProxyWithPath', () async {
      // TODO
    });

    // connect PATCH requests to proxy of Pod
    //
    //Future<String> connectCoreV1PatchNamespacedPodProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1PatchNamespacedPodProxy', () async {
      // TODO
    });

    // connect PATCH requests to proxy of Pod
    //
    //Future<String> connectCoreV1PatchNamespacedPodProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1PatchNamespacedPodProxyWithPath', () async {
      // TODO
    });

    // connect PATCH requests to proxy of Service
    //
    //Future<String> connectCoreV1PatchNamespacedServiceProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1PatchNamespacedServiceProxy', () async {
      // TODO
    });

    // connect PATCH requests to proxy of Service
    //
    //Future<String> connectCoreV1PatchNamespacedServiceProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1PatchNamespacedServiceProxyWithPath', () async {
      // TODO
    });

    // connect PATCH requests to proxy of Node
    //
    //Future<String> connectCoreV1PatchNodeProxy(String name, { String path }) async
    test('test connectCoreV1PatchNodeProxy', () async {
      // TODO
    });

    // connect PATCH requests to proxy of Node
    //
    //Future<String> connectCoreV1PatchNodeProxyWithPath(String name, String path, { String path2 }) async
    test('test connectCoreV1PatchNodeProxyWithPath', () async {
      // TODO
    });

    // connect POST requests to attach of Pod
    //
    //Future<String> connectCoreV1PostNamespacedPodAttach(String name, String namespace, { String container, bool stderr, bool stdin, bool stdout, bool tty }) async
    test('test connectCoreV1PostNamespacedPodAttach', () async {
      // TODO
    });

    // connect POST requests to exec of Pod
    //
    //Future<String> connectCoreV1PostNamespacedPodExec(String name, String namespace, { String command, String container, bool stderr, bool stdin, bool stdout, bool tty }) async
    test('test connectCoreV1PostNamespacedPodExec', () async {
      // TODO
    });

    // connect POST requests to portforward of Pod
    //
    //Future<String> connectCoreV1PostNamespacedPodPortforward(String name, String namespace, { int ports }) async
    test('test connectCoreV1PostNamespacedPodPortforward', () async {
      // TODO
    });

    // connect POST requests to proxy of Pod
    //
    //Future<String> connectCoreV1PostNamespacedPodProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1PostNamespacedPodProxy', () async {
      // TODO
    });

    // connect POST requests to proxy of Pod
    //
    //Future<String> connectCoreV1PostNamespacedPodProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1PostNamespacedPodProxyWithPath', () async {
      // TODO
    });

    // connect POST requests to proxy of Service
    //
    //Future<String> connectCoreV1PostNamespacedServiceProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1PostNamespacedServiceProxy', () async {
      // TODO
    });

    // connect POST requests to proxy of Service
    //
    //Future<String> connectCoreV1PostNamespacedServiceProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1PostNamespacedServiceProxyWithPath', () async {
      // TODO
    });

    // connect POST requests to proxy of Node
    //
    //Future<String> connectCoreV1PostNodeProxy(String name, { String path }) async
    test('test connectCoreV1PostNodeProxy', () async {
      // TODO
    });

    // connect POST requests to proxy of Node
    //
    //Future<String> connectCoreV1PostNodeProxyWithPath(String name, String path, { String path2 }) async
    test('test connectCoreV1PostNodeProxyWithPath', () async {
      // TODO
    });

    // connect PUT requests to proxy of Pod
    //
    //Future<String> connectCoreV1PutNamespacedPodProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1PutNamespacedPodProxy', () async {
      // TODO
    });

    // connect PUT requests to proxy of Pod
    //
    //Future<String> connectCoreV1PutNamespacedPodProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1PutNamespacedPodProxyWithPath', () async {
      // TODO
    });

    // connect PUT requests to proxy of Service
    //
    //Future<String> connectCoreV1PutNamespacedServiceProxy(String name, String namespace, { String path }) async
    test('test connectCoreV1PutNamespacedServiceProxy', () async {
      // TODO
    });

    // connect PUT requests to proxy of Service
    //
    //Future<String> connectCoreV1PutNamespacedServiceProxyWithPath(String name, String namespace, String path, { String path2 }) async
    test('test connectCoreV1PutNamespacedServiceProxyWithPath', () async {
      // TODO
    });

    // connect PUT requests to proxy of Node
    //
    //Future<String> connectCoreV1PutNodeProxy(String name, { String path }) async
    test('test connectCoreV1PutNodeProxy', () async {
      // TODO
    });

    // connect PUT requests to proxy of Node
    //
    //Future<String> connectCoreV1PutNodeProxyWithPath(String name, String path, { String path2 }) async
    test('test connectCoreV1PutNodeProxyWithPath', () async {
      // TODO
    });

    // create a Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> createCoreV1Namespace(IoK8sApiCoreV1Namespace body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1Namespace', () async {
      // TODO
    });

    // create a Binding
    //
    //Future<IoK8sApiCoreV1Binding> createCoreV1NamespacedBinding(String namespace, IoK8sApiCoreV1Binding body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createCoreV1NamespacedBinding', () async {
      // TODO
    });

    // create a ConfigMap
    //
    //Future<IoK8sApiCoreV1ConfigMap> createCoreV1NamespacedConfigMap(String namespace, IoK8sApiCoreV1ConfigMap body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedConfigMap', () async {
      // TODO
    });

    // create Endpoints
    //
    //Future<IoK8sApiCoreV1Endpoints> createCoreV1NamespacedEndpoints(String namespace, IoK8sApiCoreV1Endpoints body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedEndpoints', () async {
      // TODO
    });

    // create an Event
    //
    //Future<IoK8sApiCoreV1Event> createCoreV1NamespacedEvent(String namespace, IoK8sApiCoreV1Event body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedEvent', () async {
      // TODO
    });

    // create a LimitRange
    //
    //Future<IoK8sApiCoreV1LimitRange> createCoreV1NamespacedLimitRange(String namespace, IoK8sApiCoreV1LimitRange body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedLimitRange', () async {
      // TODO
    });

    // create a PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> createCoreV1NamespacedPersistentVolumeClaim(String namespace, IoK8sApiCoreV1PersistentVolumeClaim body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // create a Pod
    //
    //Future<IoK8sApiCoreV1Pod> createCoreV1NamespacedPod(String namespace, IoK8sApiCoreV1Pod body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedPod', () async {
      // TODO
    });

    // create binding of a Pod
    //
    //Future<IoK8sApiCoreV1Binding> createCoreV1NamespacedPodBinding(String name, String namespace, IoK8sApiCoreV1Binding body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createCoreV1NamespacedPodBinding', () async {
      // TODO
    });

    // create eviction of a Pod
    //
    //Future<IoK8sApiPolicyV1Eviction> createCoreV1NamespacedPodEviction(String name, String namespace, IoK8sApiPolicyV1Eviction body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createCoreV1NamespacedPodEviction', () async {
      // TODO
    });

    // create a PodTemplate
    //
    //Future<IoK8sApiCoreV1PodTemplate> createCoreV1NamespacedPodTemplate(String namespace, IoK8sApiCoreV1PodTemplate body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedPodTemplate', () async {
      // TODO
    });

    // create a ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationController> createCoreV1NamespacedReplicationController(String namespace, IoK8sApiCoreV1ReplicationController body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedReplicationController', () async {
      // TODO
    });

    // create a ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> createCoreV1NamespacedResourceQuota(String namespace, IoK8sApiCoreV1ResourceQuota body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedResourceQuota', () async {
      // TODO
    });

    // create a Secret
    //
    //Future<IoK8sApiCoreV1Secret> createCoreV1NamespacedSecret(String namespace, IoK8sApiCoreV1Secret body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedSecret', () async {
      // TODO
    });

    // create a Service
    //
    //Future<IoK8sApiCoreV1Service> createCoreV1NamespacedService(String namespace, IoK8sApiCoreV1Service body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedService', () async {
      // TODO
    });

    // create a ServiceAccount
    //
    //Future<IoK8sApiCoreV1ServiceAccount> createCoreV1NamespacedServiceAccount(String namespace, IoK8sApiCoreV1ServiceAccount body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1NamespacedServiceAccount', () async {
      // TODO
    });

    // create token of a ServiceAccount
    //
    //Future<IoK8sApiAuthenticationV1TokenRequest> createCoreV1NamespacedServiceAccountToken(String name, String namespace, IoK8sApiAuthenticationV1TokenRequest body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test createCoreV1NamespacedServiceAccountToken', () async {
      // TODO
    });

    // create a Node
    //
    //Future<IoK8sApiCoreV1Node> createCoreV1Node(IoK8sApiCoreV1Node body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1Node', () async {
      // TODO
    });

    // create a PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> createCoreV1PersistentVolume(IoK8sApiCoreV1PersistentVolume body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createCoreV1PersistentVolume', () async {
      // TODO
    });

    // delete collection of ConfigMap
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedConfigMap(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedConfigMap', () async {
      // TODO
    });

    // delete collection of Endpoints
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedEndpoints(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedEndpoints', () async {
      // TODO
    });

    // delete collection of Event
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedEvent(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedEvent', () async {
      // TODO
    });

    // delete collection of LimitRange
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedLimitRange(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedLimitRange', () async {
      // TODO
    });

    // delete collection of PersistentVolumeClaim
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedPersistentVolumeClaim(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // delete collection of Pod
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedPod(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedPod', () async {
      // TODO
    });

    // delete collection of PodTemplate
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedPodTemplate(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedPodTemplate', () async {
      // TODO
    });

    // delete collection of ReplicationController
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedReplicationController(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedReplicationController', () async {
      // TODO
    });

    // delete collection of ResourceQuota
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedResourceQuota(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedResourceQuota', () async {
      // TODO
    });

    // delete collection of Secret
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedSecret(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedSecret', () async {
      // TODO
    });

    // delete collection of Service
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedService(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedService', () async {
      // TODO
    });

    // delete collection of ServiceAccount
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNamespacedServiceAccount(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNamespacedServiceAccount', () async {
      // TODO
    });

    // delete collection of Node
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionNode({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionNode', () async {
      // TODO
    });

    // delete collection of PersistentVolume
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1CollectionPersistentVolume({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1CollectionPersistentVolume', () async {
      // TODO
    });

    // delete a Namespace
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1Namespace(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1Namespace', () async {
      // TODO
    });

    // delete a ConfigMap
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1NamespacedConfigMap(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedConfigMap', () async {
      // TODO
    });

    // delete Endpoints
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1NamespacedEndpoints(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedEndpoints', () async {
      // TODO
    });

    // delete an Event
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1NamespacedEvent(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedEvent', () async {
      // TODO
    });

    // delete a LimitRange
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1NamespacedLimitRange(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedLimitRange', () async {
      // TODO
    });

    // delete a PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> deleteCoreV1NamespacedPersistentVolumeClaim(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // delete a Pod
    //
    //Future<IoK8sApiCoreV1Pod> deleteCoreV1NamespacedPod(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedPod', () async {
      // TODO
    });

    // delete a PodTemplate
    //
    //Future<IoK8sApiCoreV1PodTemplate> deleteCoreV1NamespacedPodTemplate(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedPodTemplate', () async {
      // TODO
    });

    // delete a ReplicationController
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1NamespacedReplicationController(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedReplicationController', () async {
      // TODO
    });

    // delete a ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> deleteCoreV1NamespacedResourceQuota(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedResourceQuota', () async {
      // TODO
    });

    // delete a Secret
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1NamespacedSecret(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedSecret', () async {
      // TODO
    });

    // delete a Service
    //
    //Future<IoK8sApiCoreV1Service> deleteCoreV1NamespacedService(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedService', () async {
      // TODO
    });

    // delete a ServiceAccount
    //
    //Future<IoK8sApiCoreV1ServiceAccount> deleteCoreV1NamespacedServiceAccount(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1NamespacedServiceAccount', () async {
      // TODO
    });

    // delete a Node
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteCoreV1Node(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1Node', () async {
      // TODO
    });

    // delete a PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> deleteCoreV1PersistentVolume(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteCoreV1PersistentVolume', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getCoreV1APIResources() async
    test('test getCoreV1APIResources', () async {
      // TODO
    });

    // list objects of kind ComponentStatus
    //
    //Future<IoK8sApiCoreV1ComponentStatusList> listCoreV1ComponentStatus({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1ComponentStatus', () async {
      // TODO
    });

    // list or watch objects of kind ConfigMap
    //
    //Future<IoK8sApiCoreV1ConfigMapList> listCoreV1ConfigMapForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1ConfigMapForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Endpoints
    //
    //Future<IoK8sApiCoreV1EndpointsList> listCoreV1EndpointsForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1EndpointsForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Event
    //
    //Future<IoK8sApiCoreV1EventList> listCoreV1EventForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1EventForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind LimitRange
    //
    //Future<IoK8sApiCoreV1LimitRangeList> listCoreV1LimitRangeForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1LimitRangeForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Namespace
    //
    //Future<IoK8sApiCoreV1NamespaceList> listCoreV1Namespace({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1Namespace', () async {
      // TODO
    });

    // list or watch objects of kind ConfigMap
    //
    //Future<IoK8sApiCoreV1ConfigMapList> listCoreV1NamespacedConfigMap(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedConfigMap', () async {
      // TODO
    });

    // list or watch objects of kind Endpoints
    //
    //Future<IoK8sApiCoreV1EndpointsList> listCoreV1NamespacedEndpoints(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedEndpoints', () async {
      // TODO
    });

    // list or watch objects of kind Event
    //
    //Future<IoK8sApiCoreV1EventList> listCoreV1NamespacedEvent(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedEvent', () async {
      // TODO
    });

    // list or watch objects of kind LimitRange
    //
    //Future<IoK8sApiCoreV1LimitRangeList> listCoreV1NamespacedLimitRange(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedLimitRange', () async {
      // TODO
    });

    // list or watch objects of kind PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaimList> listCoreV1NamespacedPersistentVolumeClaim(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // list or watch objects of kind Pod
    //
    //Future<IoK8sApiCoreV1PodList> listCoreV1NamespacedPod(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedPod', () async {
      // TODO
    });

    // list or watch objects of kind PodTemplate
    //
    //Future<IoK8sApiCoreV1PodTemplateList> listCoreV1NamespacedPodTemplate(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedPodTemplate', () async {
      // TODO
    });

    // list or watch objects of kind ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationControllerList> listCoreV1NamespacedReplicationController(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedReplicationController', () async {
      // TODO
    });

    // list or watch objects of kind ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuotaList> listCoreV1NamespacedResourceQuota(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedResourceQuota', () async {
      // TODO
    });

    // list or watch objects of kind Secret
    //
    //Future<IoK8sApiCoreV1SecretList> listCoreV1NamespacedSecret(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedSecret', () async {
      // TODO
    });

    // list or watch objects of kind Service
    //
    //Future<IoK8sApiCoreV1ServiceList> listCoreV1NamespacedService(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedService', () async {
      // TODO
    });

    // list or watch objects of kind ServiceAccount
    //
    //Future<IoK8sApiCoreV1ServiceAccountList> listCoreV1NamespacedServiceAccount(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1NamespacedServiceAccount', () async {
      // TODO
    });

    // list or watch objects of kind Node
    //
    //Future<IoK8sApiCoreV1NodeList> listCoreV1Node({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1Node', () async {
      // TODO
    });

    // list or watch objects of kind PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolumeList> listCoreV1PersistentVolume({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1PersistentVolume', () async {
      // TODO
    });

    // list or watch objects of kind PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaimList> listCoreV1PersistentVolumeClaimForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1PersistentVolumeClaimForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Pod
    //
    //Future<IoK8sApiCoreV1PodList> listCoreV1PodForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1PodForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind PodTemplate
    //
    //Future<IoK8sApiCoreV1PodTemplateList> listCoreV1PodTemplateForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1PodTemplateForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationControllerList> listCoreV1ReplicationControllerForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1ReplicationControllerForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuotaList> listCoreV1ResourceQuotaForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1ResourceQuotaForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Secret
    //
    //Future<IoK8sApiCoreV1SecretList> listCoreV1SecretForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1SecretForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind ServiceAccount
    //
    //Future<IoK8sApiCoreV1ServiceAccountList> listCoreV1ServiceAccountForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1ServiceAccountForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Service
    //
    //Future<IoK8sApiCoreV1ServiceList> listCoreV1ServiceForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listCoreV1ServiceForAllNamespaces', () async {
      // TODO
    });

    // partially update the specified Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> patchCoreV1Namespace(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1Namespace', () async {
      // TODO
    });

    // partially update status of the specified Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> patchCoreV1NamespaceStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespaceStatus', () async {
      // TODO
    });

    // partially update the specified ConfigMap
    //
    //Future<IoK8sApiCoreV1ConfigMap> patchCoreV1NamespacedConfigMap(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedConfigMap', () async {
      // TODO
    });

    // partially update the specified Endpoints
    //
    //Future<IoK8sApiCoreV1Endpoints> patchCoreV1NamespacedEndpoints(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedEndpoints', () async {
      // TODO
    });

    // partially update the specified Event
    //
    //Future<IoK8sApiCoreV1Event> patchCoreV1NamespacedEvent(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedEvent', () async {
      // TODO
    });

    // partially update the specified LimitRange
    //
    //Future<IoK8sApiCoreV1LimitRange> patchCoreV1NamespacedLimitRange(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedLimitRange', () async {
      // TODO
    });

    // partially update the specified PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> patchCoreV1NamespacedPersistentVolumeClaim(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // partially update status of the specified PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> patchCoreV1NamespacedPersistentVolumeClaimStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedPersistentVolumeClaimStatus', () async {
      // TODO
    });

    // partially update the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> patchCoreV1NamespacedPod(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedPod', () async {
      // TODO
    });

    // partially update ephemeralcontainers of the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> patchCoreV1NamespacedPodEphemeralcontainers(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedPodEphemeralcontainers', () async {
      // TODO
    });

    // partially update status of the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> patchCoreV1NamespacedPodStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedPodStatus', () async {
      // TODO
    });

    // partially update the specified PodTemplate
    //
    //Future<IoK8sApiCoreV1PodTemplate> patchCoreV1NamespacedPodTemplate(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedPodTemplate', () async {
      // TODO
    });

    // partially update the specified ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationController> patchCoreV1NamespacedReplicationController(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedReplicationController', () async {
      // TODO
    });

    // partially update scale of the specified ReplicationController
    //
    //Future<IoK8sApiAutoscalingV1Scale> patchCoreV1NamespacedReplicationControllerScale(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedReplicationControllerScale', () async {
      // TODO
    });

    // partially update status of the specified ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationController> patchCoreV1NamespacedReplicationControllerStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedReplicationControllerStatus', () async {
      // TODO
    });

    // partially update the specified ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> patchCoreV1NamespacedResourceQuota(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedResourceQuota', () async {
      // TODO
    });

    // partially update status of the specified ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> patchCoreV1NamespacedResourceQuotaStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedResourceQuotaStatus', () async {
      // TODO
    });

    // partially update the specified Secret
    //
    //Future<IoK8sApiCoreV1Secret> patchCoreV1NamespacedSecret(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedSecret', () async {
      // TODO
    });

    // partially update the specified Service
    //
    //Future<IoK8sApiCoreV1Service> patchCoreV1NamespacedService(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedService', () async {
      // TODO
    });

    // partially update the specified ServiceAccount
    //
    //Future<IoK8sApiCoreV1ServiceAccount> patchCoreV1NamespacedServiceAccount(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedServiceAccount', () async {
      // TODO
    });

    // partially update status of the specified Service
    //
    //Future<IoK8sApiCoreV1Service> patchCoreV1NamespacedServiceStatus(String name, String namespace, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NamespacedServiceStatus', () async {
      // TODO
    });

    // partially update the specified Node
    //
    //Future<IoK8sApiCoreV1Node> patchCoreV1Node(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1Node', () async {
      // TODO
    });

    // partially update status of the specified Node
    //
    //Future<IoK8sApiCoreV1Node> patchCoreV1NodeStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1NodeStatus', () async {
      // TODO
    });

    // partially update the specified PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> patchCoreV1PersistentVolume(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1PersistentVolume', () async {
      // TODO
    });

    // partially update status of the specified PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> patchCoreV1PersistentVolumeStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchCoreV1PersistentVolumeStatus', () async {
      // TODO
    });

    // read the specified ComponentStatus
    //
    //Future<IoK8sApiCoreV1ComponentStatus> readCoreV1ComponentStatus(String name, { String pretty }) async
    test('test readCoreV1ComponentStatus', () async {
      // TODO
    });

    // read the specified Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> readCoreV1Namespace(String name, { String pretty }) async
    test('test readCoreV1Namespace', () async {
      // TODO
    });

    // read status of the specified Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> readCoreV1NamespaceStatus(String name, { String pretty }) async
    test('test readCoreV1NamespaceStatus', () async {
      // TODO
    });

    // read the specified ConfigMap
    //
    //Future<IoK8sApiCoreV1ConfigMap> readCoreV1NamespacedConfigMap(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedConfigMap', () async {
      // TODO
    });

    // read the specified Endpoints
    //
    //Future<IoK8sApiCoreV1Endpoints> readCoreV1NamespacedEndpoints(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedEndpoints', () async {
      // TODO
    });

    // read the specified Event
    //
    //Future<IoK8sApiCoreV1Event> readCoreV1NamespacedEvent(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedEvent', () async {
      // TODO
    });

    // read the specified LimitRange
    //
    //Future<IoK8sApiCoreV1LimitRange> readCoreV1NamespacedLimitRange(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedLimitRange', () async {
      // TODO
    });

    // read the specified PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> readCoreV1NamespacedPersistentVolumeClaim(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // read status of the specified PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> readCoreV1NamespacedPersistentVolumeClaimStatus(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedPersistentVolumeClaimStatus', () async {
      // TODO
    });

    // read the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> readCoreV1NamespacedPod(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedPod', () async {
      // TODO
    });

    // read ephemeralcontainers of the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> readCoreV1NamespacedPodEphemeralcontainers(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedPodEphemeralcontainers', () async {
      // TODO
    });

    // read log of the specified Pod
    //
    //Future<String> readCoreV1NamespacedPodLog(String name, String namespace, { String container, bool follow, bool insecureSkipTLSVerifyBackend, int limitBytes, String pretty, bool previous, int sinceSeconds, int tailLines, bool timestamps }) async
    test('test readCoreV1NamespacedPodLog', () async {
      // TODO
    });

    // read status of the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> readCoreV1NamespacedPodStatus(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedPodStatus', () async {
      // TODO
    });

    // read the specified PodTemplate
    //
    //Future<IoK8sApiCoreV1PodTemplate> readCoreV1NamespacedPodTemplate(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedPodTemplate', () async {
      // TODO
    });

    // read the specified ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationController> readCoreV1NamespacedReplicationController(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedReplicationController', () async {
      // TODO
    });

    // read scale of the specified ReplicationController
    //
    //Future<IoK8sApiAutoscalingV1Scale> readCoreV1NamespacedReplicationControllerScale(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedReplicationControllerScale', () async {
      // TODO
    });

    // read status of the specified ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationController> readCoreV1NamespacedReplicationControllerStatus(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedReplicationControllerStatus', () async {
      // TODO
    });

    // read the specified ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> readCoreV1NamespacedResourceQuota(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedResourceQuota', () async {
      // TODO
    });

    // read status of the specified ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> readCoreV1NamespacedResourceQuotaStatus(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedResourceQuotaStatus', () async {
      // TODO
    });

    // read the specified Secret
    //
    //Future<IoK8sApiCoreV1Secret> readCoreV1NamespacedSecret(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedSecret', () async {
      // TODO
    });

    // read the specified Service
    //
    //Future<IoK8sApiCoreV1Service> readCoreV1NamespacedService(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedService', () async {
      // TODO
    });

    // read the specified ServiceAccount
    //
    //Future<IoK8sApiCoreV1ServiceAccount> readCoreV1NamespacedServiceAccount(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedServiceAccount', () async {
      // TODO
    });

    // read status of the specified Service
    //
    //Future<IoK8sApiCoreV1Service> readCoreV1NamespacedServiceStatus(String name, String namespace, { String pretty }) async
    test('test readCoreV1NamespacedServiceStatus', () async {
      // TODO
    });

    // read the specified Node
    //
    //Future<IoK8sApiCoreV1Node> readCoreV1Node(String name, { String pretty }) async
    test('test readCoreV1Node', () async {
      // TODO
    });

    // read status of the specified Node
    //
    //Future<IoK8sApiCoreV1Node> readCoreV1NodeStatus(String name, { String pretty }) async
    test('test readCoreV1NodeStatus', () async {
      // TODO
    });

    // read the specified PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> readCoreV1PersistentVolume(String name, { String pretty }) async
    test('test readCoreV1PersistentVolume', () async {
      // TODO
    });

    // read status of the specified PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> readCoreV1PersistentVolumeStatus(String name, { String pretty }) async
    test('test readCoreV1PersistentVolumeStatus', () async {
      // TODO
    });

    // replace the specified Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> replaceCoreV1Namespace(String name, IoK8sApiCoreV1Namespace body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1Namespace', () async {
      // TODO
    });

    // replace finalize of the specified Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> replaceCoreV1NamespaceFinalize(String name, IoK8sApiCoreV1Namespace body, { String dryRun, String fieldManager, String fieldValidation, String pretty }) async
    test('test replaceCoreV1NamespaceFinalize', () async {
      // TODO
    });

    // replace status of the specified Namespace
    //
    //Future<IoK8sApiCoreV1Namespace> replaceCoreV1NamespaceStatus(String name, IoK8sApiCoreV1Namespace body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespaceStatus', () async {
      // TODO
    });

    // replace the specified ConfigMap
    //
    //Future<IoK8sApiCoreV1ConfigMap> replaceCoreV1NamespacedConfigMap(String name, String namespace, IoK8sApiCoreV1ConfigMap body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedConfigMap', () async {
      // TODO
    });

    // replace the specified Endpoints
    //
    //Future<IoK8sApiCoreV1Endpoints> replaceCoreV1NamespacedEndpoints(String name, String namespace, IoK8sApiCoreV1Endpoints body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedEndpoints', () async {
      // TODO
    });

    // replace the specified Event
    //
    //Future<IoK8sApiCoreV1Event> replaceCoreV1NamespacedEvent(String name, String namespace, IoK8sApiCoreV1Event body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedEvent', () async {
      // TODO
    });

    // replace the specified LimitRange
    //
    //Future<IoK8sApiCoreV1LimitRange> replaceCoreV1NamespacedLimitRange(String name, String namespace, IoK8sApiCoreV1LimitRange body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedLimitRange', () async {
      // TODO
    });

    // replace the specified PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> replaceCoreV1NamespacedPersistentVolumeClaim(String name, String namespace, IoK8sApiCoreV1PersistentVolumeClaim body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // replace status of the specified PersistentVolumeClaim
    //
    //Future<IoK8sApiCoreV1PersistentVolumeClaim> replaceCoreV1NamespacedPersistentVolumeClaimStatus(String name, String namespace, IoK8sApiCoreV1PersistentVolumeClaim body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedPersistentVolumeClaimStatus', () async {
      // TODO
    });

    // replace the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> replaceCoreV1NamespacedPod(String name, String namespace, IoK8sApiCoreV1Pod body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedPod', () async {
      // TODO
    });

    // replace ephemeralcontainers of the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> replaceCoreV1NamespacedPodEphemeralcontainers(String name, String namespace, IoK8sApiCoreV1Pod body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedPodEphemeralcontainers', () async {
      // TODO
    });

    // replace status of the specified Pod
    //
    //Future<IoK8sApiCoreV1Pod> replaceCoreV1NamespacedPodStatus(String name, String namespace, IoK8sApiCoreV1Pod body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedPodStatus', () async {
      // TODO
    });

    // replace the specified PodTemplate
    //
    //Future<IoK8sApiCoreV1PodTemplate> replaceCoreV1NamespacedPodTemplate(String name, String namespace, IoK8sApiCoreV1PodTemplate body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedPodTemplate', () async {
      // TODO
    });

    // replace the specified ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationController> replaceCoreV1NamespacedReplicationController(String name, String namespace, IoK8sApiCoreV1ReplicationController body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedReplicationController', () async {
      // TODO
    });

    // replace scale of the specified ReplicationController
    //
    //Future<IoK8sApiAutoscalingV1Scale> replaceCoreV1NamespacedReplicationControllerScale(String name, String namespace, IoK8sApiAutoscalingV1Scale body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedReplicationControllerScale', () async {
      // TODO
    });

    // replace status of the specified ReplicationController
    //
    //Future<IoK8sApiCoreV1ReplicationController> replaceCoreV1NamespacedReplicationControllerStatus(String name, String namespace, IoK8sApiCoreV1ReplicationController body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedReplicationControllerStatus', () async {
      // TODO
    });

    // replace the specified ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> replaceCoreV1NamespacedResourceQuota(String name, String namespace, IoK8sApiCoreV1ResourceQuota body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedResourceQuota', () async {
      // TODO
    });

    // replace status of the specified ResourceQuota
    //
    //Future<IoK8sApiCoreV1ResourceQuota> replaceCoreV1NamespacedResourceQuotaStatus(String name, String namespace, IoK8sApiCoreV1ResourceQuota body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedResourceQuotaStatus', () async {
      // TODO
    });

    // replace the specified Secret
    //
    //Future<IoK8sApiCoreV1Secret> replaceCoreV1NamespacedSecret(String name, String namespace, IoK8sApiCoreV1Secret body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedSecret', () async {
      // TODO
    });

    // replace the specified Service
    //
    //Future<IoK8sApiCoreV1Service> replaceCoreV1NamespacedService(String name, String namespace, IoK8sApiCoreV1Service body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedService', () async {
      // TODO
    });

    // replace the specified ServiceAccount
    //
    //Future<IoK8sApiCoreV1ServiceAccount> replaceCoreV1NamespacedServiceAccount(String name, String namespace, IoK8sApiCoreV1ServiceAccount body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedServiceAccount', () async {
      // TODO
    });

    // replace status of the specified Service
    //
    //Future<IoK8sApiCoreV1Service> replaceCoreV1NamespacedServiceStatus(String name, String namespace, IoK8sApiCoreV1Service body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NamespacedServiceStatus', () async {
      // TODO
    });

    // replace the specified Node
    //
    //Future<IoK8sApiCoreV1Node> replaceCoreV1Node(String name, IoK8sApiCoreV1Node body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1Node', () async {
      // TODO
    });

    // replace status of the specified Node
    //
    //Future<IoK8sApiCoreV1Node> replaceCoreV1NodeStatus(String name, IoK8sApiCoreV1Node body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1NodeStatus', () async {
      // TODO
    });

    // replace the specified PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> replaceCoreV1PersistentVolume(String name, IoK8sApiCoreV1PersistentVolume body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1PersistentVolume', () async {
      // TODO
    });

    // replace status of the specified PersistentVolume
    //
    //Future<IoK8sApiCoreV1PersistentVolume> replaceCoreV1PersistentVolumeStatus(String name, IoK8sApiCoreV1PersistentVolume body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceCoreV1PersistentVolumeStatus', () async {
      // TODO
    });

    // watch individual changes to a list of ConfigMap. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1ConfigMapListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1ConfigMapListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of Endpoints. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1EndpointsListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1EndpointsListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of Event. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1EventListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1EventListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of LimitRange. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1LimitRangeListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1LimitRangeListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind Namespace. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1Namespace(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1Namespace', () async {
      // TODO
    });

    // watch individual changes to a list of Namespace. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespaceList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespaceList', () async {
      // TODO
    });

    // watch changes to an object of kind ConfigMap. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedConfigMap(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedConfigMap', () async {
      // TODO
    });

    // watch individual changes to a list of ConfigMap. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedConfigMapList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedConfigMapList', () async {
      // TODO
    });

    // watch changes to an object of kind Endpoints. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedEndpoints(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedEndpoints', () async {
      // TODO
    });

    // watch individual changes to a list of Endpoints. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedEndpointsList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedEndpointsList', () async {
      // TODO
    });

    // watch changes to an object of kind Event. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedEvent(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedEvent', () async {
      // TODO
    });

    // watch individual changes to a list of Event. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedEventList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedEventList', () async {
      // TODO
    });

    // watch changes to an object of kind LimitRange. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedLimitRange(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedLimitRange', () async {
      // TODO
    });

    // watch individual changes to a list of LimitRange. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedLimitRangeList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedLimitRangeList', () async {
      // TODO
    });

    // watch changes to an object of kind PersistentVolumeClaim. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedPersistentVolumeClaim(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedPersistentVolumeClaim', () async {
      // TODO
    });

    // watch individual changes to a list of PersistentVolumeClaim. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedPersistentVolumeClaimList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedPersistentVolumeClaimList', () async {
      // TODO
    });

    // watch changes to an object of kind Pod. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedPod(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedPod', () async {
      // TODO
    });

    // watch individual changes to a list of Pod. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedPodList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedPodList', () async {
      // TODO
    });

    // watch changes to an object of kind PodTemplate. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedPodTemplate(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedPodTemplate', () async {
      // TODO
    });

    // watch individual changes to a list of PodTemplate. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedPodTemplateList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedPodTemplateList', () async {
      // TODO
    });

    // watch changes to an object of kind ReplicationController. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedReplicationController(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedReplicationController', () async {
      // TODO
    });

    // watch individual changes to a list of ReplicationController. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedReplicationControllerList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedReplicationControllerList', () async {
      // TODO
    });

    // watch changes to an object of kind ResourceQuota. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedResourceQuota(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedResourceQuota', () async {
      // TODO
    });

    // watch individual changes to a list of ResourceQuota. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedResourceQuotaList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedResourceQuotaList', () async {
      // TODO
    });

    // watch changes to an object of kind Secret. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedSecret(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedSecret', () async {
      // TODO
    });

    // watch individual changes to a list of Secret. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedSecretList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedSecretList', () async {
      // TODO
    });

    // watch changes to an object of kind Service. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedService(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedService', () async {
      // TODO
    });

    // watch changes to an object of kind ServiceAccount. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedServiceAccount(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedServiceAccount', () async {
      // TODO
    });

    // watch individual changes to a list of ServiceAccount. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedServiceAccountList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedServiceAccountList', () async {
      // TODO
    });

    // watch individual changes to a list of Service. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NamespacedServiceList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NamespacedServiceList', () async {
      // TODO
    });

    // watch changes to an object of kind Node. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1Node(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1Node', () async {
      // TODO
    });

    // watch individual changes to a list of Node. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1NodeList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1NodeList', () async {
      // TODO
    });

    // watch changes to an object of kind PersistentVolume. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1PersistentVolume(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1PersistentVolume', () async {
      // TODO
    });

    // watch individual changes to a list of PersistentVolumeClaim. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1PersistentVolumeClaimListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1PersistentVolumeClaimListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of PersistentVolume. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1PersistentVolumeList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1PersistentVolumeList', () async {
      // TODO
    });

    // watch individual changes to a list of Pod. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1PodListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1PodListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of PodTemplate. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1PodTemplateListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1PodTemplateListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of ReplicationController. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1ReplicationControllerListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1ReplicationControllerListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of ResourceQuota. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1ResourceQuotaListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1ResourceQuotaListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of Secret. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1SecretListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1SecretListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of ServiceAccount. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1ServiceAccountListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1ServiceAccountListForAllNamespaces', () async {
      // TODO
    });

    // watch individual changes to a list of Service. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchCoreV1ServiceListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchCoreV1ServiceListForAllNamespaces', () async {
      // TODO
    });

  });
}
