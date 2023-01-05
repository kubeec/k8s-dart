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

// tests for IoK8sApiAuthorizationV1ResourceRule
void main() {
  // final instance = IoK8sApiAuthorizationV1ResourceRule();

  group('test IoK8sApiAuthorizationV1ResourceRule', () {
    // APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all.
    // List<String> apiGroups (default value: const [])
    test('to test the property `apiGroups`', () async {
      // TODO
    });

    // ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all.
    // List<String> resourceNames (default value: const [])
    test('to test the property `resourceNames`', () async {
      // TODO
    });

    // Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.  \"*_/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.
    // List<String> resources (default value: const [])
    test('to test the property `resources`', () async {
      // TODO
    });

    // Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
    // List<String> verbs (default value: const [])
    test('to test the property `verbs`', () async {
      // TODO
    });


  });

}
