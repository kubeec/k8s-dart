// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_persistent_volume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PersistentVolume _$V1PersistentVolumeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PersistentVolume',
      json,
      ($checkedConvert) {
        final val = V1PersistentVolume(
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
                  : V1PersistentVolumeSpec.fromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1PersistentVolumeStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PersistentVolumeToJson(V1PersistentVolume instance) {
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
