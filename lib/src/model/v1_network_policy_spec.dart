//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_network_policy_egress_rule.dart';
import 'package:k8s/src/model/v1_network_policy_ingress_rule.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_network_policy_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NetworkPolicySpec {
  /// Returns a new [V1NetworkPolicySpec] instance.
  V1NetworkPolicySpec({

     this.egress,

     this.ingress,

    required  this.podSelector,

     this.policyTypes,
  });

      /// egress is a list of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
  @JsonKey(
    
    name: r'egress',
    required: false,
    includeIfNull: false
  )


  final List<V1NetworkPolicyEgressRule>? egress;



      /// ingress is a list of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
  @JsonKey(
    
    name: r'ingress',
    required: false,
    includeIfNull: false
  )


  final List<V1NetworkPolicyIngressRule>? ingress;



  @JsonKey(
    
    name: r'podSelector',
    required: true,
    includeIfNull: false
  )


  final V1LabelSelector podSelector;



      /// policyTypes is a list of rule types that the NetworkPolicy relates to. Valid options are [\"Ingress\"], [\"Egress\"], or [\"Ingress\", \"Egress\"]. If this field is not specified, it will default based on the existence of ingress or egress rules; policies that contain an egress section are assumed to affect egress, and all policies (whether or not they contain an ingress section) are assumed to affect ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ \"Egress\" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include \"Egress\" (since such a policy would not include an egress section and would otherwise default to just [ \"Ingress\" ]). This field is beta-level in 1.8
  @JsonKey(
    
    name: r'policyTypes',
    required: false,
    includeIfNull: false
  )


  final List<String>? policyTypes;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NetworkPolicySpec &&
     other.egress == egress &&
     other.ingress == ingress &&
     other.podSelector == podSelector &&
     other.policyTypes == policyTypes;

  @override
  int get hashCode =>
    egress.hashCode +
    ingress.hashCode +
    podSelector.hashCode +
    policyTypes.hashCode;

  factory V1NetworkPolicySpec.fromJson(Map<String, dynamic> json) => _$V1NetworkPolicySpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1NetworkPolicySpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

