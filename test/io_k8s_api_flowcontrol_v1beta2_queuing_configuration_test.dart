import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta2QueuingConfiguration
void main() {
  final instance = IoK8sApiFlowcontrolV1beta2QueuingConfigurationBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta2QueuingConfiguration, () {
    // `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
    // int handSize
    test('to test the property `handSize`', () async {
      // TODO
    });

    // `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
    // int queueLengthLimit
    test('to test the property `queueLengthLimit`', () async {
      // TODO
    });

    // `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
    // int queues
    test('to test the property `queues`', () async {
      // TODO
    });

  });
}
