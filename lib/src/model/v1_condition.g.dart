// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Condition _$V1ConditionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Condition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'lastTransitionTime',
            'message',
            'reason',
            'status',
            'type'
          ],
        );
        final val = V1Condition(
          lastTransitionTime: $checkedConvert(
              'lastTransitionTime', (v) => DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
          reason: $checkedConvert('reason', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ConditionToJson(V1Condition instance) {
  final val = <String, dynamic>{
    'lastTransitionTime': instance.lastTransitionTime.toIso8601String(),
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('observedGeneration', instance.observedGeneration);
  val['reason'] = instance.reason;
  val['status'] = instance.status;
  val['type'] = instance.type;
  return val;
}
