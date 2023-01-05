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

// tests for IoK8sApiCoreV1ServicePort
void main() {
  // final instance = IoK8sApiCoreV1ServicePort();

  group('test IoK8sApiCoreV1ServicePort', () {
    // The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
    // String appProtocol
    test('to test the property `appProtocol`', () async {
      // TODO
    });

    // The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. When considering the endpoints for a Service, this must match the 'name' field in the EndpointPort. Optional if only one ServicePort is defined on this service.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The port on each node on which this service is exposed when type is NodePort or LoadBalancer.  Usually assigned by the system. If a value is specified, in-range, and not in use it will be used, otherwise the operation will fail.  If not specified, a port will be allocated if this Service requires one.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type from NodePort to ClusterIP). More info: https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport
    // int nodePort
    test('to test the property `nodePort`', () async {
      // TODO
    });

    // The port that will be exposed by this service.
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

    // The IP protocol for this port. Supports \"TCP\", \"UDP\", and \"SCTP\". Default is TCP.  
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });

    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String targetPort
    test('to test the property `targetPort`', () async {
      // TODO
    });


  });

}
