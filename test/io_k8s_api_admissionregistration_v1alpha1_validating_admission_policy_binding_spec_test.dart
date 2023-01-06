import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec
void main() {
  final instance = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec, () {
    // IoK8sApiAdmissionregistrationV1alpha1MatchResources matchResources
    test('to test the property `matchResources`', () async {
      // TODO
    });

    // IoK8sApiAdmissionregistrationV1alpha1ParamRef paramRef
    test('to test the property `paramRef`', () async {
      // TODO
    });

    // PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
    // String policyName
    test('to test the property `policyName`', () async {
      // TODO
    });

  });
}
