import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1ResourceClass
void main() {
  final instance = IoK8sApiResourceV1alpha1ResourceClassBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1ResourceClass, () {
    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.  Resource drivers have a unique name in forward domain order (acme.example.com).
    // String driverName
    test('to test the property `driverName`', () async {
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

    // IoK8sApiResourceV1alpha1ResourceClassParametersReference parametersRef
    test('to test the property `parametersRef`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeSelector suitableNodes
    test('to test the property `suitableNodes`', () async {
      // TODO
    });

  });
}
