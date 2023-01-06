import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAppsV1RollingUpdateDeployment
void main() {
  final instance = IoK8sApiAppsV1RollingUpdateDeploymentBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAppsV1RollingUpdateDeployment, () {
    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String maxSurge
    test('to test the property `maxSurge`', () async {
      // TODO
    });

    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String maxUnavailable
    test('to test the property `maxUnavailable`', () async {
      // TODO
    });

  });
}
