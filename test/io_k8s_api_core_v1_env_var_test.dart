import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1EnvVar
void main() {
  final instance = IoK8sApiCoreV1EnvVarBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1EnvVar, () {
    // Name of the environment variable. Must be a C_IDENTIFIER.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\".
    // String value
    test('to test the property `value`', () async {
      // TODO
    });

    // IoK8sApiCoreV1EnvVarSource valueFrom
    test('to test the property `valueFrom`', () async {
      // TODO
    });

  });
}
