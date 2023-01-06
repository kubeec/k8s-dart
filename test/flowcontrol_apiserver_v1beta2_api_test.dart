import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for FlowcontrolApiserverV1beta2Api
void main() {
  final instance = K8s().getFlowcontrolApiserverV1beta2Api();

  group(FlowcontrolApiserverV1beta2Api, () {
    // create a FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchema> createFlowcontrolApiserverV1beta2FlowSchema(IoK8sApiFlowcontrolV1beta2FlowSchema body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createFlowcontrolApiserverV1beta2FlowSchema', () async {
      // TODO
    });

    // create a PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration> createFlowcontrolApiserverV1beta2PriorityLevelConfiguration(IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createFlowcontrolApiserverV1beta2PriorityLevelConfiguration', () async {
      // TODO
    });

    // delete collection of FlowSchema
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta2CollectionFlowSchema({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta2CollectionFlowSchema', () async {
      // TODO
    });

    // delete collection of PriorityLevelConfiguration
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta2CollectionPriorityLevelConfiguration({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta2CollectionPriorityLevelConfiguration', () async {
      // TODO
    });

    // delete a FlowSchema
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta2FlowSchema(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta2FlowSchema', () async {
      // TODO
    });

    // delete a PriorityLevelConfiguration
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta2PriorityLevelConfiguration(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta2PriorityLevelConfiguration', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getFlowcontrolApiserverV1beta2APIResources() async
    test('test getFlowcontrolApiserverV1beta2APIResources', () async {
      // TODO
    });

    // list or watch objects of kind FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchemaList> listFlowcontrolApiserverV1beta2FlowSchema({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listFlowcontrolApiserverV1beta2FlowSchema', () async {
      // TODO
    });

    // list or watch objects of kind PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationList> listFlowcontrolApiserverV1beta2PriorityLevelConfiguration({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listFlowcontrolApiserverV1beta2PriorityLevelConfiguration', () async {
      // TODO
    });

    // partially update the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchema> patchFlowcontrolApiserverV1beta2FlowSchema(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta2FlowSchema', () async {
      // TODO
    });

    // partially update status of the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchema> patchFlowcontrolApiserverV1beta2FlowSchemaStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta2FlowSchemaStatus', () async {
      // TODO
    });

    // partially update the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration> patchFlowcontrolApiserverV1beta2PriorityLevelConfiguration(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta2PriorityLevelConfiguration', () async {
      // TODO
    });

    // partially update status of the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration> patchFlowcontrolApiserverV1beta2PriorityLevelConfigurationStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta2PriorityLevelConfigurationStatus', () async {
      // TODO
    });

    // read the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchema> readFlowcontrolApiserverV1beta2FlowSchema(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta2FlowSchema', () async {
      // TODO
    });

    // read status of the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchema> readFlowcontrolApiserverV1beta2FlowSchemaStatus(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta2FlowSchemaStatus', () async {
      // TODO
    });

    // read the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration> readFlowcontrolApiserverV1beta2PriorityLevelConfiguration(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta2PriorityLevelConfiguration', () async {
      // TODO
    });

    // read status of the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration> readFlowcontrolApiserverV1beta2PriorityLevelConfigurationStatus(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta2PriorityLevelConfigurationStatus', () async {
      // TODO
    });

    // replace the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchema> replaceFlowcontrolApiserverV1beta2FlowSchema(String name, IoK8sApiFlowcontrolV1beta2FlowSchema body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta2FlowSchema', () async {
      // TODO
    });

    // replace status of the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta2FlowSchema> replaceFlowcontrolApiserverV1beta2FlowSchemaStatus(String name, IoK8sApiFlowcontrolV1beta2FlowSchema body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta2FlowSchemaStatus', () async {
      // TODO
    });

    // replace the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration> replaceFlowcontrolApiserverV1beta2PriorityLevelConfiguration(String name, IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta2PriorityLevelConfiguration', () async {
      // TODO
    });

    // replace status of the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration> replaceFlowcontrolApiserverV1beta2PriorityLevelConfigurationStatus(String name, IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta2PriorityLevelConfigurationStatus', () async {
      // TODO
    });

    // watch changes to an object of kind FlowSchema. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta2FlowSchema(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta2FlowSchema', () async {
      // TODO
    });

    // watch individual changes to a list of FlowSchema. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta2FlowSchemaList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta2FlowSchemaList', () async {
      // TODO
    });

    // watch changes to an object of kind PriorityLevelConfiguration. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta2PriorityLevelConfiguration(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta2PriorityLevelConfiguration', () async {
      // TODO
    });

    // watch individual changes to a list of PriorityLevelConfiguration. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta2PriorityLevelConfigurationList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta2PriorityLevelConfigurationList', () async {
      // TODO
    });

  });
}
