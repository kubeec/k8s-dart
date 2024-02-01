// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cinder_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CinderVolumeSource _$V1CinderVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CinderVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['volumeID'],
        );
        final val = V1CinderVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretRef: $checkedConvert(
              'secretRef',
              (v) => v == null
                  ? null
                  : V1LocalObjectReference.fromJson(v as Map<String, dynamic>)),
          volumeID: $checkedConvert('volumeID', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CinderVolumeSourceToJson(
    V1CinderVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('secretRef', instance.secretRef?.toJson());
  val['volumeID'] = instance.volumeID;
  return val;
}
