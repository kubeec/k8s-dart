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

// tests for IoK8sApiCoreV1PodDNSConfig
void main() {
  // final instance = IoK8sApiCoreV1PodDNSConfig();

  group('test IoK8sApiCoreV1PodDNSConfig', () {
    // A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
    // List<String> nameservers (default value: const [])
    test('to test the property `nameservers`', () async {
      // TODO
    });

    // A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
    // List<IoK8sApiCoreV1PodDNSConfigOption> options (default value: const [])
    test('to test the property `options`', () async {
      // TODO
    });

    // A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
    // List<String> searches (default value: const [])
    test('to test the property `searches`', () async {
      // TODO
    });


  });

}
