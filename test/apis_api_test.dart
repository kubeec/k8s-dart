import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for ApisApi
void main() {
  final instance = K8s().getApisApi();

  group(ApisApi, () {
    // get available API versions
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroupList> getAPIVersions() async
    test('test getAPIVersions', () async {
      // TODO
    });

  });
}
