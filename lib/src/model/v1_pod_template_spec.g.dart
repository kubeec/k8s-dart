// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_template_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodTemplateSpec _$V1PodTemplateSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodTemplateSpec',
      json,
      ($checkedConvert) {
        final val = V1PodTemplateSpec(
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1PodSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodTemplateSpecToJson(V1PodTemplateSpec instance) {
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
