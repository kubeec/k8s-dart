// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_fc_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1FCVolumeSource _$V1FCVolumeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1FCVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1FCVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          lun: $checkedConvert('lun', (v) => v as int?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          targetWWNs: $checkedConvert('targetWWNs',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          wwids: $checkedConvert('wwids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1FCVolumeSourceToJson(V1FCVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('lun', instance.lun);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('targetWWNs', instance.targetWWNs);
  writeNotNull('wwids', instance.wwids);
  return val;
}
