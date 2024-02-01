// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_non_resource_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NonResourceAttributes _$V1NonResourceAttributesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NonResourceAttributes',
      json,
      ($checkedConvert) {
        final val = V1NonResourceAttributes(
          path: $checkedConvert('path', (v) => v as String?),
          verb: $checkedConvert('verb', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NonResourceAttributesToJson(
    V1NonResourceAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('verb', instance.verb);
  return val;
}
