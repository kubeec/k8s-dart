import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiBatchV1CronJobStatus
void main() {
  final instance = IoK8sApiBatchV1CronJobStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiBatchV1CronJobStatus, () {
    // A list of pointers to currently running jobs.
    // BuiltList<IoK8sApiCoreV1ObjectReference> active
    test('to test the property `active`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastScheduleTime
    test('to test the property `lastScheduleTime`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastSuccessfulTime
    test('to test the property `lastSuccessfulTime`', () async {
      // TODO
    });

  });
}
