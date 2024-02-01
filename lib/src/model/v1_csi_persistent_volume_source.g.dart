// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_csi_persistent_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CSIPersistentVolumeSource _$V1CSIPersistentVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CSIPersistentVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['driver', 'volumeHandle'],
        );
        final val = V1CSIPersistentVolumeSource(
          controllerExpandSecretRef: $checkedConvert(
              'controllerExpandSecretRef',
              (v) => v == null
                  ? null
                  : V1SecretReference.fromJson(v as Map<String, dynamic>)),
          controllerPublishSecretRef: $checkedConvert(
              'controllerPublishSecretRef',
              (v) => v == null
                  ? null
                  : V1SecretReference.fromJson(v as Map<String, dynamic>)),
          driver: $checkedConvert('driver', (v) => v as String),
          fsType: $checkedConvert('fsType', (v) => v as String?),
          nodeExpandSecretRef: $checkedConvert(
              'nodeExpandSecretRef',
              (v) => v == null
                  ? null
                  : V1SecretReference.fromJson(v as Map<String, dynamic>)),
          nodePublishSecretRef: $checkedConvert(
              'nodePublishSecretRef',
              (v) => v == null
                  ? null
                  : V1SecretReference.fromJson(v as Map<String, dynamic>)),
          nodeStageSecretRef: $checkedConvert(
              'nodeStageSecretRef',
              (v) => v == null
                  ? null
                  : V1SecretReference.fromJson(v as Map<String, dynamic>)),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          volumeAttributes: $checkedConvert(
              'volumeAttributes',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          volumeHandle: $checkedConvert('volumeHandle', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CSIPersistentVolumeSourceToJson(
    V1CSIPersistentVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('controllerExpandSecretRef',
      instance.controllerExpandSecretRef?.toJson());
  writeNotNull('controllerPublishSecretRef',
      instance.controllerPublishSecretRef?.toJson());
  val['driver'] = instance.driver;
  writeNotNull('fsType', instance.fsType);
  writeNotNull('nodeExpandSecretRef', instance.nodeExpandSecretRef?.toJson());
  writeNotNull('nodePublishSecretRef', instance.nodePublishSecretRef?.toJson());
  writeNotNull('nodeStageSecretRef', instance.nodeStageSecretRef?.toJson());
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('volumeAttributes', instance.volumeAttributes);
  val['volumeHandle'] = instance.volumeHandle;
  return val;
}
