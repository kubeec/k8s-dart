// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_priority_level_configuration_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2PriorityLevelConfigurationSpec
    _$V1beta2PriorityLevelConfigurationSpecFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1beta2PriorityLevelConfigurationSpec',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['type'],
            );
            final val = V1beta2PriorityLevelConfigurationSpec(
              limited: $checkedConvert(
                  'limited',
                  (v) => v == null
                      ? null
                      : V1beta2LimitedPriorityLevelConfiguration.fromJson(
                          v as Map<String, dynamic>)),
              type: $checkedConvert('type', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1beta2PriorityLevelConfigurationSpecToJson(
    V1beta2PriorityLevelConfigurationSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limited', instance.limited?.toJson());
  val['type'] = instance.type;
  return val;
}
