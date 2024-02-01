// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_flow_schema_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3FlowSchemaStatus _$V1beta3FlowSchemaStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3FlowSchemaStatus',
      json,
      ($checkedConvert) {
        final val = V1beta3FlowSchemaStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1beta3FlowSchemaCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3FlowSchemaStatusToJson(
    V1beta3FlowSchemaStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  return val;
}
