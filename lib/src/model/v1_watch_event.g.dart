// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_watch_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1WatchEvent _$V1WatchEventFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1WatchEvent',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['object', 'type'],
        );
        final val = V1WatchEvent(
          object: $checkedConvert('object', (v) => v as Object),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1WatchEventToJson(V1WatchEvent instance) =>
    <String, dynamic>{
      'object': instance.object,
      'type': instance.type,
    };
