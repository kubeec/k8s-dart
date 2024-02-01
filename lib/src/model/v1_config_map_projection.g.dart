// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_config_map_projection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ConfigMapProjection _$V1ConfigMapProjectionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ConfigMapProjection',
      json,
      ($checkedConvert) {
        final val = V1ConfigMapProjection(
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

Map<String, dynamic> _$V1ConfigMapProjectionToJson(
    V1ConfigMapProjection instance) {
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
