// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeCondition _$V1NodeConditionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['status', 'type'],
        );
        final val = V1NodeCondition(
          lastHeartbeatTime: $checkedConvert('lastHeartbeatTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          lastTransitionTime: $checkedConvert('lastTransitionTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeConditionToJson(V1NodeCondition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'lastHeartbeatTime', instance.lastHeartbeatTime?.toIso8601String());
  writeNotNull(
      'lastTransitionTime', instance.lastTransitionTime?.toIso8601String());
  writeNotNull('message', instance.message);
  writeNotNull('reason', instance.reason);
  val['status'] = instance.status;
  val['type'] = instance.type;
  return val;
}
