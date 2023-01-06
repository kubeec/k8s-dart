import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for ResourceApi
void main() {
  final instance = K8s().getResourceApi();

  group(ResourceApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getResourceAPIGroup() async
    test('test getResourceAPIGroup', () async {
      // TODO
    });

  });
}
