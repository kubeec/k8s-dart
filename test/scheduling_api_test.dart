import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for SchedulingApi
void main() {
  final instance = K8s().getSchedulingApi();

  group(SchedulingApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getSchedulingAPIGroup() async
    test('test getSchedulingAPIGroup', () async {
      // TODO
    });

  });
}
