import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for RbacAuthorizationApi
void main() {
  final instance = K8s().getRbacAuthorizationApi();

  group(RbacAuthorizationApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getRbacAuthorizationAPIGroup() async
    test('test getRbacAuthorizationAPIGroup', () async {
      // TODO
    });

  });
}
