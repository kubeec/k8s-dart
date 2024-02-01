// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_attachment_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeAttachmentStatus _$V1VolumeAttachmentStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeAttachmentStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['attached'],
        );
        final val = V1VolumeAttachmentStatus(
          attachError: $checkedConvert(
              'attachError',
              (v) => v == null
                  ? null
                  : V1VolumeError.fromJson(v as Map<String, dynamic>)),
          attached: $checkedConvert('attached', (v) => v as bool),
          attachmentMetadata: $checkedConvert(
              'attachmentMetadata',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          detachError: $checkedConvert(
              'detachError',
              (v) => v == null
                  ? null
                  : V1VolumeError.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VolumeAttachmentStatusToJson(
    V1VolumeAttachmentStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attachError', instance.attachError?.toJson());
  val['attached'] = instance.attached;
  writeNotNull('attachmentMetadata', instance.attachmentMetadata);
  writeNotNull('detachError', instance.detachError?.toJson());
  return val;
}
