import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AutoscalingApi
void main() {
  final instance = K8s().getAutoscalingApi();

  group(AutoscalingApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getAutoscalingAPIGroup() async
    test('test getAutoscalingAPIGroup', () async {
      // TODO
    });

  });
}
