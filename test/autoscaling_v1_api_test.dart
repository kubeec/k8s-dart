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


/// tests for AutoscalingV1Api
void main() {
  // final instance = AutoscalingV1Api();

  group('tests for AutoscalingV1Api', () {
    // create a HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscaler> createAutoscalingV1NamespacedHorizontalPodAutoscaler(String namespace, IoK8sApiAutoscalingV1HorizontalPodAutoscaler body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createAutoscalingV1NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // delete collection of HorizontalPodAutoscaler
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscaler(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // delete a HorizontalPodAutoscaler
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteAutoscalingV1NamespacedHorizontalPodAutoscaler(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteAutoscalingV1NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getAutoscalingV1APIResources() async
    test('test getAutoscalingV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscalerList> listAutoscalingV1HorizontalPodAutoscalerForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listAutoscalingV1HorizontalPodAutoscalerForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscalerList> listAutoscalingV1NamespacedHorizontalPodAutoscaler(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listAutoscalingV1NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // partially update the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscaler> patchAutoscalingV1NamespacedHorizontalPodAutoscaler(String name, String namespace, Object body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchAutoscalingV1NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // partially update status of the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscaler> patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(String name, String namespace, Object body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatus', () async {
      // TODO
    });

    // read the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscaler> readAutoscalingV1NamespacedHorizontalPodAutoscaler(String name, String namespace, { String pretty }) async
    test('test readAutoscalingV1NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // read status of the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscaler> readAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(String name, String namespace, { String pretty }) async
    test('test readAutoscalingV1NamespacedHorizontalPodAutoscalerStatus', () async {
      // TODO
    });

    // replace the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscaler> replaceAutoscalingV1NamespacedHorizontalPodAutoscaler(String name, String namespace, IoK8sApiAutoscalingV1HorizontalPodAutoscaler body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceAutoscalingV1NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // replace status of the specified HorizontalPodAutoscaler
    //
    //Future<IoK8sApiAutoscalingV1HorizontalPodAutoscaler> replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(String name, String namespace, IoK8sApiAutoscalingV1HorizontalPodAutoscaler body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatus', () async {
      // TODO
    });

    // watch individual changes to a list of HorizontalPodAutoscaler. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind HorizontalPodAutoscaler. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAutoscalingV1NamespacedHorizontalPodAutoscaler(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAutoscalingV1NamespacedHorizontalPodAutoscaler', () async {
      // TODO
    });

    // watch individual changes to a list of HorizontalPodAutoscaler. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchAutoscalingV1NamespacedHorizontalPodAutoscalerList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchAutoscalingV1NamespacedHorizontalPodAutoscalerList', () async {
      // TODO
    });

  });
}
