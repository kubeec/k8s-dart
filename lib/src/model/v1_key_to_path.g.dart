// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_key_to_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1KeyToPath _$V1KeyToPathFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1KeyToPath',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['key', 'path'],
        );
        final val = V1KeyToPath(
          key: $checkedConvert('key', (v) => v as String),
          mode: $checkedConvert('mode', (v) => v as int?),
          path: $checkedConvert('path', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1KeyToPathToJson(V1KeyToPath instance) {
  final val = <String, dynamic>{
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mode', instance.mode);
  val['path'] = instance.path;
  return val;
}
