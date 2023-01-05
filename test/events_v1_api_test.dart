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


/// tests for EventsV1Api
void main() {
  // final instance = EventsV1Api();

  group('tests for EventsV1Api', () {
    // create an Event
    //
    //Future<IoK8sApiEventsV1Event> createEventsV1NamespacedEvent(String namespace, IoK8sApiEventsV1Event body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test createEventsV1NamespacedEvent', () async {
      // TODO
    });

    // delete collection of Event
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteEventsV1CollectionNamespacedEvent(String namespace, { String pretty, String continue_, String dryRun, String fieldSelector, int gracePeriodSeconds, String labelSelector, int limit, bool orphanDependents, String propagationPolicy, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteEventsV1CollectionNamespacedEvent', () async {
      // TODO
    });

    // delete an Event
    //
    //Future<IoK8sApimachineryPkgApisMetaV1Status> deleteEventsV1NamespacedEvent(String name, String namespace, { String pretty, String dryRun, int gracePeriodSeconds, bool orphanDependents, String propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions body }) async
    test('test deleteEventsV1NamespacedEvent', () async {
      // TODO
    });

    // get available resources
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIResourceList> getEventsV1APIResources() async
    test('test getEventsV1APIResources', () async {
      // TODO
    });

    // list or watch objects of kind Event
    //
    //Future<IoK8sApiEventsV1EventList> listEventsV1EventForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listEventsV1EventForAllNamespaces', () async {
      // TODO
    });

    // list or watch objects of kind Event
    //
    //Future<IoK8sApiEventsV1EventList> listEventsV1NamespacedEvent(String namespace, { String pretty, bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test listEventsV1NamespacedEvent', () async {
      // TODO
    });

    // partially update the specified Event
    //
    //Future<IoK8sApiEventsV1Event> patchEventsV1NamespacedEvent(String name, String namespace, Object body, { String pretty, String dryRun, String fieldManager, String fieldValidation, bool force }) async
    test('test patchEventsV1NamespacedEvent', () async {
      // TODO
    });

    // read the specified Event
    //
    //Future<IoK8sApiEventsV1Event> readEventsV1NamespacedEvent(String name, String namespace, { String pretty }) async
    test('test readEventsV1NamespacedEvent', () async {
      // TODO
    });

    // replace the specified Event
    //
    //Future<IoK8sApiEventsV1Event> replaceEventsV1NamespacedEvent(String name, String namespace, IoK8sApiEventsV1Event body, { String pretty, String dryRun, String fieldManager, String fieldValidation }) async
    test('test replaceEventsV1NamespacedEvent', () async {
      // TODO
    });

    // watch individual changes to a list of Event. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchEventsV1EventListForAllNamespaces({ bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchEventsV1EventListForAllNamespaces', () async {
      // TODO
    });

    // watch changes to an object of kind Event. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchEventsV1NamespacedEvent(String name, String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchEventsV1NamespacedEvent', () async {
      // TODO
    });

    // watch individual changes to a list of Event. deprecated: use the 'watch' parameter with a list operation instead.
    //
    //Future<IoK8sApimachineryPkgApisMetaV1WatchEvent> watchEventsV1NamespacedEventList(String namespace, { bool allowWatchBookmarks, String continue_, String fieldSelector, String labelSelector, int limit, String pretty, String resourceVersion, String resourceVersionMatch, int timeoutSeconds, bool watch }) async
    test('test watchEventsV1NamespacedEventList', () async {
      // TODO
    });

  });
}
