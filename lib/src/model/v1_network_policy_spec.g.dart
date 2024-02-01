// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_network_policy_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NetworkPolicySpec _$V1NetworkPolicySpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NetworkPolicySpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['podSelector'],
        );
        final val = V1NetworkPolicySpec(
          egress: $checkedConvert(
              'egress',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1NetworkPolicyEgressRule.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          ingress: $checkedConvert(
              'ingress',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1NetworkPolicyIngressRule.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          podSelector: $checkedConvert('podSelector',
              (v) => V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          policyTypes: $checkedConvert('policyTypes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NetworkPolicySpecToJson(V1NetworkPolicySpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('egress', instance.egress?.map((e) => e.toJson()).toList());
  writeNotNull('ingress', instance.ingress?.map((e) => e.toJson()).toList());
  val['podSelector'] = instance.podSelector.toJson();
  writeNotNull('policyTypes', instance.policyTypes);
  return val;
}
