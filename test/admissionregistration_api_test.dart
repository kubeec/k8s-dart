import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for AdmissionregistrationApi
void main() {
  final instance = K8s().getAdmissionregistrationApi();

  group(AdmissionregistrationApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getAdmissionregistrationAPIGroup() async
    test('test getAdmissionregistrationAPIGroup', () async {
      // TODO
    });

  });
}
