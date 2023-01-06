import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for StorageApi
void main() {
  final instance = K8s().getStorageApi();

  group(StorageApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getStorageAPIGroup() async
    test('test getStorageAPIGroup', () async {
      // TODO
    });

  });
}
