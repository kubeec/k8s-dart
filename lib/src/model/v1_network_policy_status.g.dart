// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_network_policy_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NetworkPolicyStatus _$V1NetworkPolicyStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NetworkPolicyStatus',
      json,
      ($checkedConvert) {
        final val = V1NetworkPolicyStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Condition.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NetworkPolicyStatusToJson(
    V1NetworkPolicyStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  return val;
}
