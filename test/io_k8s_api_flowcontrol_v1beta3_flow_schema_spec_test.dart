import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta3FlowSchemaSpec
void main() {
  final instance = IoK8sApiFlowcontrolV1beta3FlowSchemaSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta3FlowSchemaSpec, () {
    // IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod distinguisherMethod
    test('to test the property `distinguisherMethod`', () async {
      // TODO
    });

    // `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
    // int matchingPrecedence
    test('to test the property `matchingPrecedence`', () async {
      // TODO
    });

    // IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference priorityLevelConfiguration
    test('to test the property `priorityLevelConfiguration`', () async {
      // TODO
    });

    // `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
    // BuiltList<IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects> rules
    test('to test the property `rules`', () async {
      // TODO
    });

  });
}
