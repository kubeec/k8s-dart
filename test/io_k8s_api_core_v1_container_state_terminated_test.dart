import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ContainerStateTerminated
void main() {
  final instance = IoK8sApiCoreV1ContainerStateTerminatedBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ContainerStateTerminated, () {
    // Container's ID in the format '<type>://<container_id>'
    // String containerID
    test('to test the property `containerID`', () async {
      // TODO
    });

    // Exit status from the last termination of the container
    // int exitCode
    test('to test the property `exitCode`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime finishedAt
    test('to test the property `finishedAt`', () async {
      // TODO
    });

    // Message regarding the last termination of the container
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // (brief) reason from the last termination of the container
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // Signal from the last termination of the container
    // int signal
    test('to test the property `signal`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime startedAt
    test('to test the property `startedAt`', () async {
      // TODO
    });

  });
}
