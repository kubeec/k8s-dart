//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_network_policy_peer.dart';
import 'package:k8s/src/model/v1_network_policy_port.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_network_policy_ingress_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NetworkPolicyIngressRule {
  /// Returns a new [V1NetworkPolicyIngressRule] instance.
  V1NetworkPolicyIngressRule({

     this.from,

     this.ports,
  });

      /// from is a list of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  @JsonKey(
    
    name: r'from',
    required: false,
    includeIfNull: false
  )


  final List<V1NetworkPolicyPeer>? from;



      /// ports is a list of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  @JsonKey(
    
    name: r'ports',
    required: false,
    includeIfNull: false
  )


  final List<V1NetworkPolicyPort>? ports;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NetworkPolicyIngressRule &&
     other.from == from &&
     other.ports == ports;

  @override
  int get hashCode =>
    from.hashCode +
    ports.hashCode;

  factory V1NetworkPolicyIngressRule.fromJson(Map<String, dynamic> json) => _$V1NetworkPolicyIngressRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1NetworkPolicyIngressRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

