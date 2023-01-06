import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta3GroupSubject
void main() {
  final instance = IoK8sApiFlowcontrolV1beta3GroupSubjectBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta3GroupSubject, () {
    // name is the user group that matches, or \"*\" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

  });
}
