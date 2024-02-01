// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodTemplate _$V1PodTemplateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodTemplate',
      json,
      ($checkedConvert) {
        final val = V1PodTemplate(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          template: $checkedConvert(
              'template',
              (v) => v == null
                  ? null
                  : V1PodTemplateSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodTemplateToJson(V1PodTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('template', instance.template?.toJson());
  return val;
}
