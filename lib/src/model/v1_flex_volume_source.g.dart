// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_flex_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1FlexVolumeSource _$V1FlexVolumeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1FlexVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['driver'],
        );
        final val = V1FlexVolumeSource(
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
                  : V1LocalObjectReference.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1FlexVolumeSourceToJson(V1FlexVolumeSource instance) {
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
