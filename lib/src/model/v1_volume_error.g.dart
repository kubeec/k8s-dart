// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeError _$V1VolumeErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeError',
      json,
      ($checkedConvert) {
        final val = V1VolumeError(
          message: $checkedConvert('message', (v) => v as String?),
          time: $checkedConvert(
              'time', (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VolumeErrorToJson(V1VolumeError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('time', instance.time?.toIso8601String());
  return val;
}
