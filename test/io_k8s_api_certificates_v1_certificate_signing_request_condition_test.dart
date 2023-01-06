import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCertificatesV1CertificateSigningRequestCondition
void main() {
  final instance = IoK8sApiCertificatesV1CertificateSigningRequestConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCertificatesV1CertificateSigningRequestCondition, () {
    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastTransitionTime
    test('to test the property `lastTransitionTime`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastUpdateTime
    test('to test the property `lastUpdateTime`', () async {
      // TODO
    });

    // message contains a human readable message with details about the request state
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // reason indicates a brief reason for the request state
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\".
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".  An \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.  A \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.  A \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.  Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.  Only one condition of a given type is allowed.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
