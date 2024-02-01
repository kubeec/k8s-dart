// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_replica_set_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ReplicaSetSpec _$V1ReplicaSetSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ReplicaSetSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['selector'],
        );
        final val = V1ReplicaSetSpec(
          minReadySeconds: $checkedConvert('minReadySeconds', (v) => v as int?),
          replicas: $checkedConvert('replicas', (v) => v as int?),
          selector: $checkedConvert('selector',
              (v) => V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          template: $checkedConvert(
              'template',
              (v) => v == null
                  ? null
                  : V1PodTemplateSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ReplicaSetSpecToJson(V1ReplicaSetSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minReadySeconds', instance.minReadySeconds);
  writeNotNull('replicas', instance.replicas);
  val['selector'] = instance.selector.toJson();
  writeNotNull('template', instance.template?.toJson());
  return val;
}
