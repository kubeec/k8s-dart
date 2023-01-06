import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1IngressTLS
void main() {
  final instance = IoK8sApiNetworkingV1IngressTLSBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1IngressTLS, () {
    // Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
    // BuiltList<String> hosts
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
