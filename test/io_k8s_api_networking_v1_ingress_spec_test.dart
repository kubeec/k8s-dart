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

// tests for IoK8sApiNetworkingV1IngressSpec
void main() {
  // final instance = IoK8sApiNetworkingV1IngressSpec();

  group('test IoK8sApiNetworkingV1IngressSpec', () {
    // IoK8sApiNetworkingV1IngressBackend defaultBackend
    test('to test the property `defaultBackend`', () async {
      // TODO
    });

    // IngressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
    // String ingressClassName
    test('to test the property `ingressClassName`', () async {
      // TODO
    });

    // A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    // List<IoK8sApiNetworkingV1IngressRule> rules (default value: const [])
    test('to test the property `rules`', () async {
      // TODO
    });

    // TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    // List<IoK8sApiNetworkingV1IngressTLS> tls (default value: const [])
    test('to test the property `tls`', () async {
      // TODO
    });


  });

}
