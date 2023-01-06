import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for PolicyApi
void main() {
  final instance = K8s().getPolicyApi();

  group(PolicyApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getPolicyAPIGroup() async
    test('test getPolicyAPIGroup', () async {
      // TODO
    });

  });
}
