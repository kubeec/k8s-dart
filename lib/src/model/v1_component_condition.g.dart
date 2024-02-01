// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_component_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ComponentCondition _$V1ComponentConditionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ComponentCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['status', 'type'],
        );
        final val = V1ComponentCondition(
          error: $checkedConvert('error', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ComponentConditionToJson(
    V1ComponentCondition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.error);
  writeNotNull('message', instance.message);
  val['status'] = instance.status;
  val['type'] = instance.type;
  return val;
}
