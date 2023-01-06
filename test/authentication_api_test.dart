import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AuthenticationApi
void main() {
  final instance = K8s().getAuthenticationApi();

  group(AuthenticationApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getAuthenticationAPIGroup() async
    test('test getAuthenticationAPIGroup', () async {
      // TODO
    });

  });
}
