// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_storage_version_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1StorageVersionCondition _$V1alpha1StorageVersionConditionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1StorageVersionCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['reason', 'status', 'type'],
        );
        final val = V1alpha1StorageVersionCondition(
          lastTransitionTime: $checkedConvert('lastTransitionTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String?),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
          reason: $checkedConvert('reason', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1StorageVersionConditionToJson(
    V1alpha1StorageVersionCondition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'lastTransitionTime', instance.lastTransitionTime?.toIso8601String());
  writeNotNull('message', instance.message);
  writeNotNull('observedGeneration', instance.observedGeneration);
  val['reason'] = instance.reason;
  val['status'] = instance.status;
  val['type'] = instance.type;
  return val;
}
