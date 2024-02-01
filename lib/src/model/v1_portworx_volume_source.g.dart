// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_portworx_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PortworxVolumeSource _$V1PortworxVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PortworxVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['volumeID'],
        );
        final val = V1PortworxVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          volumeID: $checkedConvert('volumeID', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PortworxVolumeSourceToJson(
    V1PortworxVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('readOnly', instance.readOnly);
  val['volumeID'] = instance.volumeID;
  return val;
}
