import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for FlowcontrolApiserverApi
void main() {
  final instance = K8s().getFlowcontrolApiserverApi();

  group(FlowcontrolApiserverApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getFlowcontrolApiserverAPIGroup() async
    test('test getFlowcontrolApiserverAPIGroup', () async {
      // TODO
    });

  });
}
