// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_taint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Taint _$V1TaintFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Taint',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['effect', 'key'],
        );
        final val = V1Taint(
          effect: $checkedConvert('effect', (v) => v as String),
          key: $checkedConvert('key', (v) => v as String),
          timeAdded: $checkedConvert('timeAdded',
              (v) => v == null ? null : DateTime.parse(v as String)),
          value: $checkedConvert('value', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TaintToJson(V1Taint instance) {
  final val = <String, dynamic>{
    'effect': instance.effect,
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timeAdded', instance.timeAdded?.toIso8601String());
  writeNotNull('value', instance.value);
  return val;
}
