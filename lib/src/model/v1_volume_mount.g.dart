// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_mount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeMount _$V1VolumeMountFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeMount',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['mountPath', 'name'],
        );
        final val = V1VolumeMount(
          mountPath: $checkedConvert('mountPath', (v) => v as String),
          mountPropagation:
              $checkedConvert('mountPropagation', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          subPath: $checkedConvert('subPath', (v) => v as String?),
          subPathExpr: $checkedConvert('subPathExpr', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VolumeMountToJson(V1VolumeMount instance) {
  final val = <String, dynamic>{
    'mountPath': instance.mountPath,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mountPropagation', instance.mountPropagation);
  val['name'] = instance.name;
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('subPath', instance.subPath);
  writeNotNull('subPathExpr', instance.subPathExpr);
  return val;
}
