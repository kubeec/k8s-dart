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

// tests for IoK8sApiRbacV1Subject
void main() {
  // final instance = IoK8sApiRbacV1Subject();

  group('test IoK8sApiRbacV1Subject', () {
    // APIGroup holds the API group of the referenced subject. Defaults to \"\" for ServiceAccount subjects. Defaults to \"rbac.authorization.k8s.io\" for User and Group subjects.
    // String apiGroup
    test('to test the property `apiGroup`', () async {
      // TODO
    });

    // Kind of object being referenced. Values defined by this API group are \"User\", \"Group\", and \"ServiceAccount\". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Name of the object being referenced.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace of the referenced object.  If the object kind is non-namespace, such as \"User\" or \"Group\", and this value is not empty the Authorizer should report an error.
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });


  });

}
