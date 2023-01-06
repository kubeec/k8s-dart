import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ExecAction
void main() {
  final instance = IoK8sApiCoreV1ExecActionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ExecAction, () {
    // Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
    // BuiltList<String> command
    test('to test the property `command`', () async {
      // TODO
    });

  });
}
