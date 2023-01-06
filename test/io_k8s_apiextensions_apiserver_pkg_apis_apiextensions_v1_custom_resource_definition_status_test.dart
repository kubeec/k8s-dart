import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus
void main() {
  final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus, () {
    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames acceptedNames
    test('to test the property `acceptedNames`', () async {
      // TODO
    });

    // conditions indicate state for particular aspects of a CustomResourceDefinition
    // BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
    // BuiltList<String> storedVersions
    test('to test the property `storedVersions`', () async {
      // TODO
    });

  });
}
