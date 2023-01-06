import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for ApiextensionsApi
void main() {
  final instance = K8s().getApiextensionsApi();

  group(ApiextensionsApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getApiextensionsAPIGroup() async
    test('test getApiextensionsAPIGroup', () async {
      // TODO
    });

  });
}
