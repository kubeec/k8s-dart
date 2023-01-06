import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoordinationV1LeaseSpec
void main() {
  final instance = IoK8sApiCoordinationV1LeaseSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoordinationV1LeaseSpec, () {
    // MicroTime is version of Time with microsecond level precision.
    // DateTime acquireTime
    test('to test the property `acquireTime`', () async {
      // TODO
    });

    // holderIdentity contains the identity of the holder of a current lease.
    // String holderIdentity
    test('to test the property `holderIdentity`', () async {
      // TODO
    });

    // leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
    // int leaseDurationSeconds
    test('to test the property `leaseDurationSeconds`', () async {
      // TODO
    });

    // leaseTransitions is the number of transitions of a lease between holders.
    // int leaseTransitions
    test('to test the property `leaseTransitions`', () async {
      // TODO
    });

    // MicroTime is version of Time with microsecond level precision.
    // DateTime renewTime
    test('to test the property `renewTime`', () async {
      // TODO
    });

  });
}
