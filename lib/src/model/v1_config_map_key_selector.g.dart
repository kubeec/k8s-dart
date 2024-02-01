// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_config_map_key_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ConfigMapKeySelector _$V1ConfigMapKeySelectorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ConfigMapKeySelector',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['key'],
        );
        final val = V1ConfigMapKeySelector(
          key: $checkedConvert('key', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String?),
          optional: $checkedConvert('optional', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ConfigMapKeySelectorToJson(
    V1ConfigMapKeySelector instance) {
  final val = <String, dynamic>{
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('optional', instance.optional);
  return val;
}
