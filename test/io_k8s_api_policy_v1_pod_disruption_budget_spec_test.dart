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

// tests for IoK8sApiPolicyV1PodDisruptionBudgetSpec
void main() {
  // final instance = IoK8sApiPolicyV1PodDisruptionBudgetSpec();

  group('test IoK8sApiPolicyV1PodDisruptionBudgetSpec', () {
    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String maxUnavailable
    test('to test the property `maxUnavailable`', () async {
      // TODO
    });

    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String minAvailable
    test('to test the property `minAvailable`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector selector
    test('to test the property `selector`', () async {
      // TODO
    });

    // UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be considered for eviction. Current implementation considers healthy pods, as pods that have status.conditions item with type=\"Ready\",status=\"True\".  Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the default behavior will be used, which corresponds to the IfHealthyBudget policy.  IfHealthyBudget policy means that running pods (status.phase=\"Running\"), but not yet healthy can be evicted only if the guarded application is not disrupted (status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be subject to the PDB for eviction.  AlwaysAllow policy means that all running pods (status.phase=\"Running\"), but not yet healthy are considered disrupted and can be evicted regardless of whether the criteria in a PDB is met. This means perspective running pods of a disrupted application might not get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.  Additional policies may be added in the future. Clients making eviction decisions should disallow eviction of unhealthy pods if they encounter an unrecognized policy in this field.  This field is alpha-level. The eviction API uses this field when the feature gate PDBUnhealthyPodEvictionPolicy is enabled (disabled by default).
    // String unhealthyPodEvictionPolicy
    test('to test the property `unhealthyPodEvictionPolicy`', () async {
      // TODO
    });


  });

}
