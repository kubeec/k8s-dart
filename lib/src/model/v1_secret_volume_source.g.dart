// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_secret_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SecretVolumeSource _$V1SecretVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SecretVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1SecretVolumeSource(
          defaultMode: $checkedConvert('defaultMode', (v) => v as int?),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1KeyToPath.fromJson(e as Map<String, dynamic>))
                  .toList()),
          optional: $checkedConvert('optional', (v) => v as bool?),
          secretName: $checkedConvert('secretName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SecretVolumeSourceToJson(
    V1SecretVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultMode', instance.defaultMode);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('optional', instance.optional);
  writeNotNull('secretName', instance.secretName);
  return val;
}
