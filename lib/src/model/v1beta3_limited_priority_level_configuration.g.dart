// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_limited_priority_level_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3LimitedPriorityLevelConfiguration
    _$V1beta3LimitedPriorityLevelConfigurationFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1beta3LimitedPriorityLevelConfiguration',
          json,
          ($checkedConvert) {
            final val = V1beta3LimitedPriorityLevelConfiguration(
              borrowingLimitPercent:
                  $checkedConvert('borrowingLimitPercent', (v) => v as int?),
              lendablePercent:
                  $checkedConvert('lendablePercent', (v) => v as int?),
              limitResponse: $checkedConvert(
                  'limitResponse',
                  (v) => v == null
                      ? null
                      : V1beta3LimitResponse.fromJson(
                          v as Map<String, dynamic>)),
              nominalConcurrencyShares:
                  $checkedConvert('nominalConcurrencyShares', (v) => v as int?),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1beta3LimitedPriorityLevelConfigurationToJson(
    V1beta3LimitedPriorityLevelConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('borrowingLimitPercent', instance.borrowingLimitPercent);
  writeNotNull('lendablePercent', instance.lendablePercent);
  writeNotNull('limitResponse', instance.limitResponse?.toJson());
  writeNotNull('nominalConcurrencyShares', instance.nominalConcurrencyShares);
  return val;
}
