// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_event_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EventSource _$V1EventSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EventSource',
      json,
      ($checkedConvert) {
        final val = V1EventSource(
          component: $checkedConvert('component', (v) => v as String?),
          host: $checkedConvert('host', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EventSourceToJson(V1EventSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('component', instance.component);
  writeNotNull('host', instance.host);
  return val;
}
