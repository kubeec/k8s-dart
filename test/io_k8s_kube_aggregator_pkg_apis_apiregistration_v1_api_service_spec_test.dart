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

// tests for IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec
void main() {
  // final instance = IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec();

  group('test IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec', () {
    // CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
    // String caBundle
    test('to test the property `caBundle`', () async {
      // TODO
    });

    // Group is the API group name this server hosts
    // String group
    test('to test the property `group`', () async {
      // TODO
    });

    // GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
    // int groupPriorityMinimum
    test('to test the property `groupPriorityMinimum`', () async {
      // TODO
    });

    // InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
    // bool insecureSkipTLSVerify
    test('to test the property `insecureSkipTLSVerify`', () async {
      // TODO
    });

    // IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference service
    test('to test the property `service`', () async {
      // TODO
    });

    // Version is the API version this server hosts.  For example, \"v1\"
    // String version
    test('to test the property `version`', () async {
      // TODO
    });

    // VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    // int versionPriority
    test('to test the property `versionPriority`', () async {
      // TODO
    });


  });

}
