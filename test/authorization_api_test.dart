import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AuthorizationApi
void main() {
  final instance = K8s().getAuthorizationApi();

  group(AuthorizationApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getAuthorizationAPIGroup() async
    test('test getAuthorizationAPIGroup', () async {
      // TODO
    });

  });
}
