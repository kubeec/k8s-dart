// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_limited_priority_level_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2LimitedPriorityLevelConfiguration
    _$V1beta2LimitedPriorityLevelConfigurationFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1beta2LimitedPriorityLevelConfiguration',
          json,
          ($checkedConvert) {
            final val = V1beta2LimitedPriorityLevelConfiguration(
              assuredConcurrencyShares:
                  $checkedConvert('assuredConcurrencyShares', (v) => v as int?),
              borrowingLimitPercent:
                  $checkedConvert('borrowingLimitPercent', (v) => v as int?),
              lendablePercent:
                  $checkedConvert('lendablePercent', (v) => v as int?),
              limitResponse: $checkedConvert(
                  'limitResponse',
                  (v) => v == null
                      ? null
                      : V1beta2LimitResponse.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1beta2LimitedPriorityLevelConfigurationToJson(
    V1beta2LimitedPriorityLevelConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('assuredConcurrencyShares', instance.assuredConcurrencyShares);
  writeNotNull('borrowingLimitPercent', instance.borrowingLimitPercent);
  writeNotNull('lendablePercent', instance.lendablePercent);
  writeNotNull('limitResponse', instance.limitResponse?.toJson());
  return val;
}
