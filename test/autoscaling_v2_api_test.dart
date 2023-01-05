//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';


/// tests for AutoscalingV2Api
void main() {
  // final instance = AutoscalingV2Api();

  group('tests for AutoscalingV2Api', () {
    // create a HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> createAutoscalingV2NamespacedHorizontalPodAutoscaler(String namespace, IoK8sApiAutoscalingV2HorizontalPodAutoscaler body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createAutoscalingV2NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // delete collection of HorizontalPodAutoscaler
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAutoscalingV2CollectionNamespacedHorizontalPodAutoscaler(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAutoscalingV2CollectionNamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // delete a HorizontalPodAutoscaler
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAutoscalingV2NamespacedHorizontalPodAutoscaler(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAutoscalingV2NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getAutoscalingV2APIResources() async
    test('test getAutoscalingV2APIResources', () async {
      // TODO
    });

    // list or watch objects of kind HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscalerList> listAutoscalingV2HorizontalPodAutoscalerForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listAutoscalingV2HorizontalPodAutoscalerForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscalerList> listAutoscalingV2NamespacedHorizontalPodAutoscaler(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listAutoscalingV2NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // partially update the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> patchAutoscalingV2NamespacedHorizontalPodAutoscaler(String name, String namespace, Object body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchAutoscalingV2NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // partially update status of the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> patchAutoscalingV2NamespacedHorizontalPodAutoscalerStatus(String name, String namespace, Object body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchAutoscalingV2NamespacedHorizontalPodAutoscalerStatus', () async {
      // TODO
    });

    // read the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> readAutoscalingV2NamespacedHorizontalPodAutoscaler(String name, String namespace, { String pretty }) async
    test('test readAutoscalingV2NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // read status of the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> readAutoscalingV2NamespacedHorizontalPodAutoscalerStatus(String name, String namespace, { String pretty }) async
    test('test readAutoscalingV2NamespacedHorizontalPodAutoscalerStatus', () async {
      // TODO
    });

    // replace the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> replaceAutoscalingV2NamespacedHorizontalPodAutoscaler(String name, String namespace, IoK8sApiAutoscalingV2HorizontalPodAutoscaler body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceAutoscalingV2NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // replace status of the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV2HorizontalPodAutoscaler> replaceAutoscalingV2NamespacedHorizontalPodAutoscalerStatus(String name, String namespace, IoK8sApiAutoscalingV2HorizontalPodAutoscaler body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceAutoscalingV2NamespacedHorizontalPodAutoscalerStatus', () async {
      // TODO
    });

    // watch individual changes to a list of HorizontalPodAutoscaler. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAutoscalingV2HorizontalPodAutoscalerListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAutoscalingV2HorizontalPodAutoscalerListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind HorizontalPodAutoscaler. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAutoscalingV2NamespacedHorizontalPodAutoscaler(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAutoscalingV2NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // watch individual changes to a list of HorizontalPodAutoscaler. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAutoscalingV2NamespacedHorizontalPodAutoscalerList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAutoscalingV2NamespacedHorizontalPodAutoscalerList', () async {
      // TODO
    });

  });
}
