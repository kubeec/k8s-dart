// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_attachment_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeAttachmentSource _$V1VolumeAttachmentSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeAttachmentSource',
      json,
      ($checkedConvert) {
        final val = V1VolumeAttachmentSource(
          inlineVolumeSpec: $checkedConvert(
              'inlineVolumeSpec',
              (v) => v == null
                  ? null
                  : V1PersistentVolumeSpec.fromJson(v as Map<String, dynamic>)),
          persistentVolumeName:
              $checkedConvert('persistentVolumeName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VolumeAttachmentSourceToJson(
    V1VolumeAttachmentSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inlineVolumeSpec', instance.inlineVolumeSpec?.toJson());
  writeNotNull('persistentVolumeName', instance.persistentVolumeName);
  return val;
}
