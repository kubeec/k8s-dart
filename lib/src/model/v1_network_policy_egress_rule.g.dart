// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_network_policy_egress_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NetworkPolicyEgressRule _$V1NetworkPolicyEgressRuleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NetworkPolicyEgressRule',
      json,
      ($checkedConvert) {
        final val = V1NetworkPolicyEgressRule(
          ports: $checkedConvert(
              'ports',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1NetworkPolicyPort.fromJson(e as Map<String, dynamic>))
                  .toList()),
          to: $checkedConvert(
              'to',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1NetworkPolicyPeer.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NetworkPolicyEgressRuleToJson(
    V1NetworkPolicyEgressRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ports', instance.ports?.map((e) => e.toJson()).toList());
  writeNotNull('to', instance.to?.map((e) => e.toJson()).toList());
  return val;
}
