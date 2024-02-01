// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_toleration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Toleration _$V1TolerationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1Toleration',
      json,
      ($checkedConvert) {
        final val = V1Toleration(
          effect: $checkedConvert('effect', (v) => v as String?),
          key: $checkedConvert('key', (v) => v as String?),
          operator_: $checkedConvert('operator', (v) => v as String?),
          tolerationSeconds:
              $checkedConvert('tolerationSeconds', (v) => v as int?),
          value: $checkedConvert('value', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'operator_': 'operator'},
    );

Map<String, dynamic> _$V1TolerationToJson(V1Toleration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effect', instance.effect);
  writeNotNull('key', instance.key);
  writeNotNull('operator', instance.operator_);
  writeNotNull('tolerationSeconds', instance.tolerationSeconds);
  writeNotNull('value', instance.value);
  return val;
}
