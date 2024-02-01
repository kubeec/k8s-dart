// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_limit_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LimitRange _$V1LimitRangeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LimitRange',
      json,
      ($checkedConvert) {
        final val = V1LimitRange(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1LimitRangeSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LimitRangeToJson(V1LimitRange instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('spec', instance.spec?.toJson());
  return val;
}
