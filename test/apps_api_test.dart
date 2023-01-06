import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AppsApi
void main() {
  final instance = K8s().getAppsApi();

  group(AppsApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getAppsAPIGroup() async
    test('test getAppsAPIGroup', () async {
      // TODO
    });

  });
}
