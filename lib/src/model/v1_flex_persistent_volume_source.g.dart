// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_flex_persistent_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1FlexPersistentVolumeSource _$V1FlexPersistentVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1FlexPersistentVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['driver'],
        );
        final val = V1FlexPersistentVolumeSource(
          driver: $checkedConvert('driver', (v) => v as String),
          fsType: $checkedConvert('fsType', (v) => v as String?),
          options: $checkedConvert(
              'options',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretRef: $checkedConvert(
              'secretRef',
              (v) => v == null
                  ? null
                  : V1SecretReference.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1FlexPersistentVolumeSourceToJson(
    V1FlexPersistentVolumeSource instance) {
  final val = <String, dynamic>{
    'driver': instance.driver,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('options', instance.options);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('secretRef', instance.secretRef?.toJson());
  return val;
}
