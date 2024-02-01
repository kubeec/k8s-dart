// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cluster_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ClusterRole _$V1ClusterRoleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ClusterRole',
      json,
      ($checkedConvert) {
        final val = V1ClusterRole(
          aggregationRule: $checkedConvert(
              'aggregationRule',
              (v) => v == null
                  ? null
                  : V1AggregationRule.fromJson(v as Map<String, dynamic>)),
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          rules: $checkedConvert(
              'rules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1PolicyRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ClusterRoleToJson(V1ClusterRole instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('aggregationRule', instance.aggregationRule?.toJson());
  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('rules', instance.rules?.map((e) => e.toJson()).toList());
  return val;
}
