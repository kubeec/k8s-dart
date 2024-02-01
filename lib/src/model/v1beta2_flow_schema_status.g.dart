// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_flow_schema_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2FlowSchemaStatus _$V1beta2FlowSchemaStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2FlowSchemaStatus',
      json,
      ($checkedConvert) {
        final val = V1beta2FlowSchemaStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1beta2FlowSchemaCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2FlowSchemaStatusToJson(
    V1beta2FlowSchemaStatus instance) {
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
