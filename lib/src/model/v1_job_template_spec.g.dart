// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_job_template_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1JobTemplateSpec _$V1JobTemplateSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1JobTemplateSpec',
      json,
      ($checkedConvert) {
        final val = V1JobTemplateSpec(
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1JobSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1JobTemplateSpecToJson(V1JobTemplateSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('spec', instance.spec?.toJson());
  return val;
}
