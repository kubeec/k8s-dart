import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for NodeApi
void main() {
  final instance = K8s().getNodeApi();

  group(NodeApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getNodeAPIGroup() async
    test('test getNodeAPIGroup', () async {
      // TODO
    });

  });
}
