// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_namespace_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NamespaceCondition _$V1NamespaceConditionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NamespaceCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['status', 'type'],
        );
        final val = V1NamespaceCondition(
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

Map<String, dynamic> _$V1NamespaceConditionToJson(
    V1NamespaceCondition instance) {
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
  val['status'] = instance.status;
  val['type'] = instance.type;
  return val;
}
