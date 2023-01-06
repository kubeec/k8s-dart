import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for CertificatesApi
void main() {
  final instance = K8s().getCertificatesApi();

  group(CertificatesApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getCertificatesAPIGroup() async
    test('test getCertificatesAPIGroup', () async {
      // TODO
    });

  });
}
