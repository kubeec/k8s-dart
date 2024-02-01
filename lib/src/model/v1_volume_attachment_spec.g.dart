// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_attachment_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeAttachmentSpec _$V1VolumeAttachmentSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeAttachmentSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['attacher', 'nodeName', 'source'],
        );
        final val = V1VolumeAttachmentSpec(
          attacher: $checkedConvert('attacher', (v) => v as String),
          nodeName: $checkedConvert('nodeName', (v) => v as String),
          source_: $checkedConvert(
              'source',
              (v) =>
                  V1VolumeAttachmentSource.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'source_': 'source'},
    );

Map<String, dynamic> _$V1VolumeAttachmentSpecToJson(
        V1VolumeAttachmentSpec instance) =>
    <String, dynamic>{
      'attacher': instance.attacher,
      'nodeName': instance.nodeName,
      'source': instance.source_.toJson(),
    };
