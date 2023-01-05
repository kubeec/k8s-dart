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

// tests for IoK8sApiNetworkingV1IngressTLS
void main() {
  // final instance = IoK8sApiNetworkingV1IngressTLS();

  group('test IoK8sApiNetworkingV1IngressTLS', () {
    // Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
    // List<String> hosts (default value: const [])
    test('to test the property `hosts`', () async {
      // TODO
    });

    // SecretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the \"Host\" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
    // String secretName
    test('to test the property `secretName`', () async {
      // TODO
    });


  });

}
