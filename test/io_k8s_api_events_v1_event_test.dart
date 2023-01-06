import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiEventsV1Event
void main() {
  final instance = IoK8sApiEventsV1EventBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiEventsV1Event, () {
    // action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
    // int deprecatedCount
    test('to test the property `deprecatedCount`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime deprecatedFirstTimestamp
    test('to test the property `deprecatedFirstTimestamp`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime deprecatedLastTimestamp
    test('to test the property `deprecatedLastTimestamp`', () async {
      // TODO
    });

    // IoK8sApiCoreV1EventSource deprecatedSource
    test('to test the property `deprecatedSource`', () async {
      // TODO
    });

    // MicroTime is version of Time with microsecond level precision.
    // DateTime eventTime
    test('to test the property `eventTime`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1ObjectMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    // String note
    test('to test the property `note`', () async {
      // TODO
    });

    // reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference regarding
    test('to test the property `regarding`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference related
    test('to test the property `related`', () async {
      // TODO
    });

    // reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
    // String reportingController
    test('to test the property `reportingController`', () async {
      // TODO
    });

    // reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
    // String reportingInstance
    test('to test the property `reportingInstance`', () async {
      // TODO
    });

    // IoK8sApiEventsV1EventSeries series
    test('to test the property `series`', () async {
      // TODO
    });

    // type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
