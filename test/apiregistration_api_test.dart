import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for ApiregistrationApi
void main() {
  final instance = K8s().getApiregistrationApi();

  group(ApiregistrationApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getApiregistrationAPIGroup() async
    test('test getApiregistrationAPIGroup', () async {
      // TODO
    });

  });
}
