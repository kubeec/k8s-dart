import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for EventsApi
void main() {
  final instance = K8s().getEventsApi();

  group(EventsApi, () {
    // get information of a group
    //
    //Future<IoK8sApimachineryPkgApisMetaV1APIGroup> getEventsAPIGroup() async
    test('test getEventsAPIGroup', () async {
      // TODO
    });

  });
}
