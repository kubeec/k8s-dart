// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_local_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LocalObjectReference _$V1LocalObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LocalObjectReference',
      json,
      ($checkedConvert) {
        final val = V1LocalObjectReference(
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LocalObjectReferenceToJson(
    V1LocalObjectReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}
