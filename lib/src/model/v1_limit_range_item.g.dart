// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_limit_range_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LimitRangeItem _$V1LimitRangeItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LimitRangeItem',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V1LimitRangeItem(
          default_: $checkedConvert(
              'default',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          defaultRequest: $checkedConvert(
              'defaultRequest',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          max: $checkedConvert(
              'max',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          maxLimitRequestRatio: $checkedConvert(
              'maxLimitRequestRatio',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          min: $checkedConvert(
              'min',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'default_': 'default'},
    );

Map<String, dynamic> _$V1LimitRangeItemToJson(V1LimitRangeItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('default', instance.default_);
  writeNotNull('defaultRequest', instance.defaultRequest);
  writeNotNull('max', instance.max);
  writeNotNull('maxLimitRequestRatio', instance.maxLimitRequestRatio);
  writeNotNull('min', instance.min);
  val['type'] = instance.type;
  return val;
}
