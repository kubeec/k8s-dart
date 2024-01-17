//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_network_policy_peer.dart';
import 'package:k8s/src/model/v1_network_policy_port.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_network_policy_egress_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NetworkPolicyEgressRule {
  /// Returns a new [V1NetworkPolicyEgressRule] instance.
  V1NetworkPolicyEgressRule({

     this.ports,

     this.to,
  });

      /// ports is a list of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  @JsonKey(
    
    name: r'ports',
    required: false,
    includeIfNull: false
  )


  final List<V1NetworkPolicyPort>? ports;



      /// to is a list of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
  @JsonKey(
    
    name: r'to',
    required: false,
    includeIfNull: false
  )


  final List<V1NetworkPolicyPeer>? to;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NetworkPolicyEgressRule &&
     other.ports == ports &&
     other.to == to;

  @override
  int get hashCode =>
    ports.hashCode +
    to.hashCode;

  factory V1NetworkPolicyEgressRule.fromJson(Map<String, dynamic> json) => _$V1NetworkPolicyEgressRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1NetworkPolicyEgressRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

