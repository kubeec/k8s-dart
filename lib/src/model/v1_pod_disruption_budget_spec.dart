//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_disruption_budget_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodDisruptionBudgetSpec {
  /// Returns a new [V1PodDisruptionBudgetSpec] instance.
  V1PodDisruptionBudgetSpec({

     this.maxUnavailable,

     this.minAvailable,

     this.selector,

     this.unhealthyPodEvictionPolicy,
  });

      /// An eviction is allowed if at most \"maxUnavailable\" pods selected by \"selector\" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with \"minAvailable\".
  @JsonKey(
    
    name: r'maxUnavailable',
    required: false,
    includeIfNull: false
  )


  final Object? maxUnavailable;



      /// An eviction is allowed if at least \"minAvailable\" pods selected by \"selector\" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying \"100%\".
  @JsonKey(
    
    name: r'minAvailable',
    required: false,
    includeIfNull: false
  )


  final Object? minAvailable;



  @JsonKey(
    
    name: r'selector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? selector;



      /// UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be considered for eviction. Current implementation considers healthy pods, as pods that have status.conditions item with type=\"Ready\",status=\"True\".  Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the default behavior will be used, which corresponds to the IfHealthyBudget policy.  IfHealthyBudget policy means that running pods (status.phase=\"Running\"), but not yet healthy can be evicted only if the guarded application is not disrupted (status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be subject to the PDB for eviction.  AlwaysAllow policy means that all running pods (status.phase=\"Running\"), but not yet healthy are considered disrupted and can be evicted regardless of whether the criteria in a PDB is met. This means perspective running pods of a disrupted application might not get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.  Additional policies may be added in the future. Clients making eviction decisions should disallow eviction of unhealthy pods if they encounter an unrecognized policy in this field.  This field is beta-level. The eviction API uses this field when the feature gate PDBUnhealthyPodEvictionPolicy is enabled (enabled by default).
  @JsonKey(
    
    name: r'unhealthyPodEvictionPolicy',
    required: false,
    includeIfNull: false
  )


  final String? unhealthyPodEvictionPolicy;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodDisruptionBudgetSpec &&
     other.maxUnavailable == maxUnavailable &&
     other.minAvailable == minAvailable &&
     other.selector == selector &&
     other.unhealthyPodEvictionPolicy == unhealthyPodEvictionPolicy;

  @override
  int get hashCode =>
    maxUnavailable.hashCode +
    minAvailable.hashCode +
    selector.hashCode +
    unhealthyPodEvictionPolicy.hashCode;

  factory V1PodDisruptionBudgetSpec.fromJson(Map<String, dynamic> json) => _$V1PodDisruptionBudgetSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodDisruptionBudgetSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

