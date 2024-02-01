// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_endpoint_conditions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EndpointConditions _$V1EndpointConditionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EndpointConditions',
      json,
      ($checkedConvert) {
        final val = V1EndpointConditions(
          ready: $checkedConvert('ready', (v) => v as bool?),
          serving: $checkedConvert('serving', (v) => v as bool?),
          terminating: $checkedConvert('terminating', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EndpointConditionsToJson(
    V1EndpointConditions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ready', instance.ready);
  writeNotNull('serving', instance.serving);
  writeNotNull('terminating', instance.terminating);
  return val;
}
