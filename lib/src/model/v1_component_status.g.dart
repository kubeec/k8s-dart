// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_component_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ComponentStatus _$V1ComponentStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ComponentStatus',
      json,
      ($checkedConvert) {
        final val = V1ComponentStatus(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ComponentCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ComponentStatusToJson(V1ComponentStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  return val;
}
