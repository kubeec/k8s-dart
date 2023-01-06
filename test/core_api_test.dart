import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for CoreApi
void main() {
  final instance = K8s().getCoreApi();

  group(CoreApi, () {
    // get available API versions
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIVersions> getCoreAPIVersions() async
    test('test getCoreAPIVersions', () async {
      // TODO
    });

  });
}
