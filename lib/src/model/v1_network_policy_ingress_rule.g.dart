// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_network_policy_ingress_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NetworkPolicyIngressRule _$V1NetworkPolicyIngressRuleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NetworkPolicyIngressRule',
      json,
      ($checkedConvert) {
        final val = V1NetworkPolicyIngressRule(
          from: $checkedConvert(
              'from',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1NetworkPolicyPeer.fromJson(e as Map<String, dynamic>))
                  .toList()),
          ports: $checkedConvert(
              'ports',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1NetworkPolicyPort.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NetworkPolicyIngressRuleToJson(
    V1NetworkPolicyIngressRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from', instance.from?.map((e) => e.toJson()).toList());
  writeNotNull('ports', instance.ports?.map((e) => e.toJson()).toList());
  return val;
}
