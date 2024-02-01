// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_priority_level_configuration_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3PriorityLevelConfigurationStatus
    _$V1beta3PriorityLevelConfigurationStatusFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1beta3PriorityLevelConfigurationStatus',
          json,
          ($checkedConvert) {
            final val = V1beta3PriorityLevelConfigurationStatus(
              conditions: $checkedConvert(
                  'conditions',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) =>
                          V1beta3PriorityLevelConfigurationCondition.fromJson(
                              e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1beta3PriorityLevelConfigurationStatusToJson(
    V1beta3PriorityLevelConfigurationStatus instance) {
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
