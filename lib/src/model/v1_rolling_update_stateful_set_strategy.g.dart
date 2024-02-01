// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_rolling_update_stateful_set_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RollingUpdateStatefulSetStrategy _$V1RollingUpdateStatefulSetStrategyFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1RollingUpdateStatefulSetStrategy',
      json,
      ($checkedConvert) {
        final val = V1RollingUpdateStatefulSetStrategy(
          maxUnavailable: $checkedConvert('maxUnavailable', (v) => v),
          partition: $checkedConvert('partition', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RollingUpdateStatefulSetStrategyToJson(
    V1RollingUpdateStatefulSetStrategy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('maxUnavailable', instance.maxUnavailable);
  writeNotNull('partition', instance.partition);
  return val;
}
