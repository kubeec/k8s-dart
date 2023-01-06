import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec
void main() {
  final instance = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec, () {
    // FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
    // String failurePolicy
    test('to test the property `failurePolicy`', () async {
      // TODO
    });

    // IoK8sApiAdmissionregistrationV1alpha1MatchResources matchConstraints
    test('to test the property `matchConstraints`', () async {
      // TODO
    });

    // IoK8sApiAdmissionregistrationV1alpha1ParamKind paramKind
    test('to test the property `paramKind`', () async {
      // TODO
    });

    // Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
    // BuiltList<IoK8sApiAdmissionregistrationV1alpha1Validation> validations
    test('to test the property `validations`', () async {
      // TODO
    });

  });
}
