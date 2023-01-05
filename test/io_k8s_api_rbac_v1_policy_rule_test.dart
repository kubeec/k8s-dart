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

// tests for IoK8sApiRbacV1PolicyRule
void main() {
  // final instance = IoK8sApiRbacV1PolicyRule();

  group('test IoK8sApiRbacV1PolicyRule', () {
    // APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. \"\" represents the core API group and \"*\" represents all API groups.
    // List<String> apiGroups (default value: const [])
    test('to test the property `apiGroups`', () async {
      // TODO
    });

    // NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as \"/api\"),  but not both.
    // List<String> nonResourceURLs (default value: const [])
    test('to test the property `nonResourceURLs`', () async {
      // TODO
    });

    // ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    // List<String> resourceNames (default value: const [])
    test('to test the property `resourceNames`', () async {
      // TODO
    });

    // Resources is a list of resources this rule applies to. '*' represents all resources.
    // List<String> resources (default value: const [])
    test('to test the property `resources`', () async {
      // TODO
    });

    // Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
    // List<String> verbs (default value: const [])
    test('to test the property `verbs`', () async {
      // TODO
    });


  });

}
