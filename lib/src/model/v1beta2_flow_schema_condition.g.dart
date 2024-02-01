// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_flow_schema_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2FlowSchemaCondition _$V1beta2FlowSchemaConditionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2FlowSchemaCondition',
      json,
      ($checkedConvert) {
        final val = V1beta2FlowSchemaCondition(
          lastTransitionTime: $checkedConvert('lastTransitionTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2FlowSchemaConditionToJson(
    V1beta2FlowSchemaCondition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'lastTransitionTime', instance.lastTransitionTime?.toIso8601String());
  writeNotNull('message', instance.message);
  writeNotNull('reason', instance.reason);
  writeNotNull('status', instance.status);
  writeNotNull('type', instance.type);
  return val;
}
