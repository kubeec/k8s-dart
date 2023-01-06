import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for DiscoveryApi
void main() {
  final instance = K8s().getDiscoveryApi();

  group(DiscoveryApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getDiscoveryAPIGroup() async
    test('test getDiscoveryAPIGroup', () async {
      // TODO
    });

  });
}
