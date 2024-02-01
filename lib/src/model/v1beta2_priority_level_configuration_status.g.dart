// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_priority_level_configuration_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2PriorityLevelConfigurationStatus
    _$V1beta2PriorityLevelConfigurationStatusFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1beta2PriorityLevelConfigurationStatus',
          json,
          ($checkedConvert) {
            final val = V1beta2PriorityLevelConfigurationStatus(
              conditions: $checkedConvert(
                  'conditions',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) =>
                          V1beta2PriorityLevelConfigurationCondition.fromJson(
                              e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1beta2PriorityLevelConfigurationStatusToJson(
    V1beta2PriorityLevelConfigurationStatus instance) {
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
