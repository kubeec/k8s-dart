// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_flow_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3FlowSchema _$V1beta3FlowSchemaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3FlowSchema',
      json,
      ($checkedConvert) {
        final val = V1beta3FlowSchema(
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
                  : V1beta3FlowSchemaSpec.fromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1beta3FlowSchemaStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3FlowSchemaToJson(V1beta3FlowSchema instance) {
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
