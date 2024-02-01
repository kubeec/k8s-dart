// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_limit_range_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LimitRangeSpec _$V1LimitRangeSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LimitRangeSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['limits'],
        );
        final val = V1LimitRangeSpec(
          limits: $checkedConvert(
              'limits',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      V1LimitRangeItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LimitRangeSpecToJson(V1LimitRangeSpec instance) =>
    <String, dynamic>{
      'limits': instance.limits.map((e) => e.toJson()).toList(),
    };
