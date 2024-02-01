// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_secret_projection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SecretProjection _$V1SecretProjectionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SecretProjection',
      json,
      ($checkedConvert) {
        final val = V1SecretProjection(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1KeyToPath.fromJson(e as Map<String, dynamic>))
                  .toList()),
          name: $checkedConvert('name', (v) => v as String?),
          optional: $checkedConvert('optional', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SecretProjectionToJson(V1SecretProjection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name);
  writeNotNull('optional', instance.optional);
  return val;
}
