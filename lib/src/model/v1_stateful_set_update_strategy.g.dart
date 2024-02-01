// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_stateful_set_update_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StatefulSetUpdateStrategy _$V1StatefulSetUpdateStrategyFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StatefulSetUpdateStrategy',
      json,
      ($checkedConvert) {
        final val = V1StatefulSetUpdateStrategy(
          rollingUpdate: $checkedConvert(
              'rollingUpdate',
              (v) => v == null
                  ? null
                  : V1RollingUpdateStatefulSetStrategy.fromJson(
                      v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StatefulSetUpdateStrategyToJson(
    V1StatefulSetUpdateStrategy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rollingUpdate', instance.rollingUpdate?.toJson());
  writeNotNull('type', instance.type);
  return val;
}
