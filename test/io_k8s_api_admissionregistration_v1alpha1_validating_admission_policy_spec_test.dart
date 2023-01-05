//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec
void main() {
  // final instance = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec();

  group('test IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec', () {
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
    // List<IoK8sApiAdmissionregistrationV1alpha1Validation> validations (default value: const [])
    test('to test the property `validations`', () async {
      // TODO
    });


  });

}
