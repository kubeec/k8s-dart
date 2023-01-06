import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for VersionApi
void main() {
  final instance = K8s().getVersionApi();

  group(VersionApi, () {
    // get the code version
    //
    //Future<IoK8sApimachineryPkgVersionInfo> getCodeVersion() async
    test('test getCodeVersion', () async {
      // TODO
    });

  });
}
