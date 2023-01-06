import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1Event
void main() {
  final instance = IoK8sApiCoreV1EventBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1Event, () {
    // What action was taken/failed regarding to the Regarding object.
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // The number of times this event has occurred.
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

    // MicroTime is version of Time with microsecond level precision.
    // DateTime eventTime
    test('to test the property `eventTime`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime firstTimestamp
    test('to test the property `firstTimestamp`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference involvedObject
    test('to test the property `involvedObject`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastTimestamp
    test('to test the property `lastTimestamp`', () async {
      // TODO
    });

    // A human-readable description of the status of this operation.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1ObjectMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference related
    test('to test the property `related`', () async {
      // TODO
    });

    // Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
    // String reportingComponent
    test('to test the property `reportingComponent`', () async {
      // TODO
    });

    // ID of the controller instance, e.g. `kubelet-xyzf`.
    // String reportingInstance
    test('to test the property `reportingInstance`', () async {
      // TODO
    });

    // IoK8sApiCoreV1EventSeries series
    test('to test the property `series`', () async {
      // TODO
    });

    // IoK8sApiCoreV1EventSource source_
    test('to test the property `source_`', () async {
      // TODO
    });

    // Type of this event (Normal, Warning), new types could be added in the future
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
