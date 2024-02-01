import 'package:k8s/k8s.dart';
import 'package:test/test.dart';

void main() {
  group('Kubeconfig', () {
    final kubernetes = Kubernetes();

    test('client can be instantiated with initFromFile method', () async {
      await kubernetes.initFromFile('test/files/kubeconfig.yaml');
      expect(kubernetes.client, isNotNull);
      expect(true, isTrue);
    });
  });
}
