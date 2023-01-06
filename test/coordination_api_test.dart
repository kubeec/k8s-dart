import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for CoordinationApi
void main() {
  final instance = K8s().getCoordinationApi();

  group(CoordinationApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getCoordinationAPIGroup() async
    test('test getCoordinationAPIGroup', () async {
      // TODO
    });

  });
}
