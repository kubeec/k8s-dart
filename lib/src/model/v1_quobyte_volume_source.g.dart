// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_quobyte_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1QuobyteVolumeSource _$V1QuobyteVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1QuobyteVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['registry', 'volume'],
        );
        final val = V1QuobyteVolumeSource(
          group: $checkedConvert('group', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          registry: $checkedConvert('registry', (v) => v as String),
          tenant: $checkedConvert('tenant', (v) => v as String?),
          user: $checkedConvert('user', (v) => v as String?),
          volume: $checkedConvert('volume', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1QuobyteVolumeSourceToJson(
    V1QuobyteVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('readOnly', instance.readOnly);
  val['registry'] = instance.registry;
  writeNotNull('tenant', instance.tenant);
  writeNotNull('user', instance.user);
  val['volume'] = instance.volume;
  return val;
}
