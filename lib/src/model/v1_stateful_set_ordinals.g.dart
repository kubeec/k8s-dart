// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_stateful_set_ordinals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StatefulSetOrdinals _$V1StatefulSetOrdinalsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StatefulSetOrdinals',
      json,
      ($checkedConvert) {
        final val = V1StatefulSetOrdinals(
          start: $checkedConvert('start', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StatefulSetOrdinalsToJson(
    V1StatefulSetOrdinals instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start', instance.start);
  return val;
}
