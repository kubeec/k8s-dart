// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_replication_controller_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ReplicationControllerSpec _$V1ReplicationControllerSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ReplicationControllerSpec',
      json,
      ($checkedConvert) {
        final val = V1ReplicationControllerSpec(
          minReadySeconds: $checkedConvert('minReadySeconds', (v) => v as int?),
          replicas: $checkedConvert('replicas', (v) => v as int?),
          selector: $checkedConvert(
              'selector',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          template: $checkedConvert(
              'template',
              (v) => v == null
                  ? null
                  : V1PodTemplateSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ReplicationControllerSpecToJson(
    V1ReplicationControllerSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minReadySeconds', instance.minReadySeconds);
  writeNotNull('replicas', instance.replicas);
  writeNotNull('selector', instance.selector);
  writeNotNull('template', instance.template?.toJson());
  return val;
}
