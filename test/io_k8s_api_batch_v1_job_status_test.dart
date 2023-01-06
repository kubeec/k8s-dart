import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiBatchV1JobStatus
void main() {
  final instance = IoK8sApiBatchV1JobStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiBatchV1JobStatus, () {
    // The number of pending and running pods.
    // int active
    test('to test the property `active`', () async {
      // TODO
    });

    // CompletedIndexes holds the completed indexes when .spec.completionMode = \"Indexed\" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as \"1,3-5,7\".
    // String completedIndexes
    test('to test the property `completedIndexes`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime completionTime
    test('to test the property `completionTime`', () async {
      // TODO
    });

    // The latest available observations of an object's current state. When a Job fails, one of the conditions will have type \"Failed\" and status true. When a Job is suspended, one of the conditions will have type \"Suspended\" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type \"Complete\" and status true. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
    // BuiltList<IoK8sApiBatchV1JobCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The number of pods which reached phase Failed.
    // int failed
    test('to test the property `failed`', () async {
      // TODO
    });

    // The number of pods which have a Ready condition.  This field is beta-level. The job controller populates the field when the feature gate JobReadyPods is enabled (enabled by default).
    // int ready
    test('to test the property `ready`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // The number of pods which reached phase Succeeded.
    // int succeeded
    test('to test the property `succeeded`', () async {
      // TODO
    });

    // IoK8sApiBatchV1UncountedTerminatedPods uncountedTerminatedPods
    test('to test the property `uncountedTerminatedPods`', () async {
      // TODO
    });

  });
}
