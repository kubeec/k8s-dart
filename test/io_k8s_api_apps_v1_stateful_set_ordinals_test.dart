import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAppsV1StatefulSetOrdinals
void main() {
  final instance = IoK8sApiAppsV1StatefulSetOrdinalsBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAppsV1StatefulSetOrdinals, () {
    // start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:   [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas). If unset, defaults to 0. Replica indices will be in the range:   [0, .spec.replicas).
    // int start
    test('to test the property `start`', () async {
      // TODO
    });

  });
}
