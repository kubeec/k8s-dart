import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for BatchApi
void main() {
  final instance = K8s().getBatchApi();

  group(BatchApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getBatchAPIGroup() async
    test('test getBatchAPIGroup', () async {
      // TODO
    });

  });
}
