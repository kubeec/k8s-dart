import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for FlowcontrolApiserverV1beta3Api
void main() {
  final instance = K8s().getFlowcontrolApiserverV1beta3Api();

  group(FlowcontrolApiserverV1beta3Api, () {
    // create a FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchema> createFlowcontrolApiserverV1beta3FlowSchema(IoK8sApiFlowcontrolV1beta3FlowSchema body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createFlowcontrolApiserverV1beta3FlowSchema', () async {
      // TODO
    });

    // create a PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration> createFlowcontrolApiserverV1beta3PriorityLevelConfiguration(IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createFlowcontrolApiserverV1beta3PriorityLevelConfiguration', () async {
      // TODO
    });

    // delete collection of FlowSchema
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta3CollectionFlowSchema({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta3CollectionFlowSchema', () async {
      // TODO
    });

    // delete collection of PriorityLevelConfiguration
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta3CollectionPriorityLevelConfiguration({ String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta3CollectionPriorityLevelConfiguration', () async {
      // TODO
    });

    // delete a FlowSchema
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta3FlowSchema(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta3FlowSchema', () async {
      // TODO
    });

    // delete a PriorityLevelConfiguration
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteFlowcontrolApiserverV1beta3PriorityLevelConfiguration(String name, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteFlowcontrolApiserverV1beta3PriorityLevelConfiguration', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getFlowcontrolApiserverV1beta3APIResources() async
    test('test getFlowcontrolApiserverV1beta3APIResources', () async {
      // TODO
    });

    // list or watch objects of kind FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchemaList> listFlowcontrolApiserverV1beta3FlowSchema({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listFlowcontrolApiserverV1beta3FlowSchema', () async {
      // TODO
    });

    // list or watch objects of kind PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationList> listFlowcontrolApiserverV1beta3PriorityLevelConfiguration({ String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listFlowcontrolApiserverV1beta3PriorityLevelConfiguration', () async {
      // TODO
    });

    // partially update the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchema> patchFlowcontrolApiserverV1beta3FlowSchema(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta3FlowSchema', () async {
      // TODO
    });

    // partially update status of the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchema> patchFlowcontrolApiserverV1beta3FlowSchemaStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta3FlowSchemaStatus', () async {
      // TODO
    });

    // partially update the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration> patchFlowcontrolApiserverV1beta3PriorityLevelConfiguration(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta3PriorityLevelConfiguration', () async {
      // TODO
    });

    // partially update status of the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration> patchFlowcontrolApiserverV1beta3PriorityLevelConfigurationStatus(String name, JsonObject body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchFlowcontrolApiserverV1beta3PriorityLevelConfigurationStatus', () async {
      // TODO
    });

    // read the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchema> readFlowcontrolApiserverV1beta3FlowSchema(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta3FlowSchema', () async {
      // TODO
    });

    // read status of the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchema> readFlowcontrolApiserverV1beta3FlowSchemaStatus(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta3FlowSchemaStatus', () async {
      // TODO
    });

    // read the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration> readFlowcontrolApiserverV1beta3PriorityLevelConfiguration(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta3PriorityLevelConfiguration', () async {
      // TODO
    });

    // read status of the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration> readFlowcontrolApiserverV1beta3PriorityLevelConfigurationStatus(String name, { String pretty }) async
    test('test readFlowcontrolApiserverV1beta3PriorityLevelConfigurationStatus', () async {
      // TODO
    });

    // replace the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchema> replaceFlowcontrolApiserverV1beta3FlowSchema(String name, IoK8sApiFlowcontrolV1beta3FlowSchema body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta3FlowSchema', () async {
      // TODO
    });

    // replace status of the specified FlowSchema
    //
    //Future<IoK8sApiFlowcontrolV1beta3FlowSchema> replaceFlowcontrolApiserverV1beta3FlowSchemaStatus(String name, IoK8sApiFlowcontrolV1beta3FlowSchema body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta3FlowSchemaStatus', () async {
      // TODO
    });

    // replace the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration> replaceFlowcontrolApiserverV1beta3PriorityLevelConfiguration(String name, IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta3PriorityLevelConfiguration', () async {
      // TODO
    });

    // replace status of the specified PriorityLevelConfiguration
    //
    //Future<IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration> replaceFlowcontrolApiserverV1beta3PriorityLevelConfigurationStatus(String name, IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceFlowcontrolApiserverV1beta3PriorityLevelConfigurationStatus', () async {
      // TODO
    });

    // watch changes to an object of kind FlowSchema. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta3FlowSchema(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta3FlowSchema', () async {
      // TODO
    });

    // watch individual changes to a list of FlowSchema. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta3FlowSchemaList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta3FlowSchemaList', () async {
      // TODO
    });

    // watch changes to an object of kind PriorityLevelConfiguration. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta3PriorityLevelConfiguration(String name, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta3PriorityLevelConfiguration', () async {
      // TODO
    });

    // watch individual changes to a list of PriorityLevelConfiguration. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchFlowcontrolApiserverV1beta3PriorityLevelConfigurationList({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchFlowcontrolApiserverV1beta3PriorityLevelConfigurationList', () async {
      // TODO
    });

  });
}
