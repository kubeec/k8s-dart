import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for NetworkingApi
void main() {
  final instance = K8s().getNetworkingApi();

  group(NetworkingApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getNetworkingAPIGroup() async
    test('test getNetworkingAPIGroup', () async {
      // TODO
    });

  });
}
