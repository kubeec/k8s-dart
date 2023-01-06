import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ResourceRequirements
void main() {
  final instance = IoK8sApiCoreV1ResourceRequirementsBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ResourceRequirements, () {
    // Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.  This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.  This field is immutable.
    // BuiltList<IoK8sApiCoreV1ResourceClaim> claims
    test('to test the property `claims`', () async {
      // TODO
    });

    // Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    // BuiltMap<String, String> limits
    test('to test the property `limits`', () async {
      // TODO
    });

    // Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    // BuiltMap<String, String> requests
    test('to test the property `requests`', () async {
      // TODO
    });

  });
}
