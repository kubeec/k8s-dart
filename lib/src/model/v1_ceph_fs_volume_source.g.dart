// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ceph_fs_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CephFSVolumeSource _$V1CephFSVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CephFSVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['monitors'],
        );
        final val = V1CephFSVolumeSource(
          monitors: $checkedConvert('monitors',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          path: $checkedConvert('path', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretFile: $checkedConvert('secretFile', (v) => v as String?),
          secretRef: $checkedConvert(
              'secretRef',
              (v) => v == null
                  ? null
                  : V1LocalObjectReference.fromJson(v as Map<String, dynamic>)),
          user: $checkedConvert('user', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CephFSVolumeSourceToJson(
    V1CephFSVolumeSource instance) {
  final val = <String, dynamic>{
    'monitors': instance.monitors,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('secretFile', instance.secretFile);
  writeNotNull('secretRef', instance.secretRef?.toJson());
  writeNotNull('user', instance.user);
  return val;
}
