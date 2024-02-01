// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_secret_key_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SecretKeySelector _$V1SecretKeySelectorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SecretKeySelector',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['key'],
        );
        final val = V1SecretKeySelector(
          key: $checkedConvert('key', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String?),
          optional: $checkedConvert('optional', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SecretKeySelectorToJson(V1SecretKeySelector instance) {
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
