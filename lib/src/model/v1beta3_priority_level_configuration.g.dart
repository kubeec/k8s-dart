// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_priority_level_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3PriorityLevelConfiguration _$V1beta3PriorityLevelConfigurationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3PriorityLevelConfiguration',
      json,
      ($checkedConvert) {
        final val = V1beta3PriorityLevelConfiguration(
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
                  : V1beta3PriorityLevelConfigurationSpec.fromJson(
                      v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1beta3PriorityLevelConfigurationStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3PriorityLevelConfigurationToJson(
    V1beta3PriorityLevelConfiguration instance) {
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
  writeNotNull('status', instance.status?.toJson());
  return val;
}
