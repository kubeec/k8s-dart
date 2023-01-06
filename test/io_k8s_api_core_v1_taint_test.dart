import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1Taint
void main() {
  final instance = IoK8sApiCoreV1TaintBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1Taint, () {
    // Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.  
    // String effect
    test('to test the property `effect`', () async {
      // TODO
    });

    // Required. The taint key to be applied to a node.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime timeAdded
    test('to test the property `timeAdded`', () async {
      // TODO
    });

    // The taint value corresponding to the taint key.
    // String value
    test('to test the property `value`', () async {
      // TODO
    });

  });
}
