import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for InternalApiserverApi
void main() {
  final instance = K8s().getInternalApiserverApi();

  group(InternalApiserverApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getInternalApiserverAPIGroup() async
    test('test getInternalApiserverAPIGroup', () async {
      // TODO
    });

  });
}
