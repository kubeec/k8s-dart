import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1GRPCAction
void main() {
  final instance = IoK8sApiCoreV1GRPCActionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1GRPCAction, () {
    // Port number of the gRPC service. Number must be in the range 1 to 65535.
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

    // Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).  If this is not specified, the default behavior is defined by gRPC.
    // String service
    test('to test the property `service`', () async {
      // TODO
    });

  });
}
