// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_scale_io_persistent_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ScaleIOPersistentVolumeSource _$V1ScaleIOPersistentVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ScaleIOPersistentVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['gateway', 'secretRef', 'system'],
        );
        final val = V1ScaleIOPersistentVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          gateway: $checkedConvert('gateway', (v) => v as String),
          protectionDomain:
              $checkedConvert('protectionDomain', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretRef: $checkedConvert('secretRef',
              (v) => V1SecretReference.fromJson(v as Map<String, dynamic>)),
          sslEnabled: $checkedConvert('sslEnabled', (v) => v as bool?),
          storageMode: $checkedConvert('storageMode', (v) => v as String?),
          storagePool: $checkedConvert('storagePool', (v) => v as String?),
          system: $checkedConvert('system', (v) => v as String),
          volumeName: $checkedConvert('volumeName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ScaleIOPersistentVolumeSourceToJson(
    V1ScaleIOPersistentVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  val['gateway'] = instance.gateway;
  writeNotNull('protectionDomain', instance.protectionDomain);
  writeNotNull('readOnly', instance.readOnly);
  val['secretRef'] = instance.secretRef.toJson();
  writeNotNull('sslEnabled', instance.sslEnabled);
  writeNotNull('storageMode', instance.storageMode);
  writeNotNull('storagePool', instance.storagePool);
  val['system'] = instance.system;
  writeNotNull('volumeName', instance.volumeName);
  return val;
}
