// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_rbd_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RBDVolumeSource _$V1RBDVolumeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1RBDVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['image', 'monitors'],
        );
        final val = V1RBDVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String),
          keyring: $checkedConvert('keyring', (v) => v as String?),
          monitors: $checkedConvert('monitors',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          pool: $checkedConvert('pool', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
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

Map<String, dynamic> _$V1RBDVolumeSourceToJson(V1RBDVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  val['image'] = instance.image;
  writeNotNull('keyring', instance.keyring);
  val['monitors'] = instance.monitors;
  writeNotNull('pool', instance.pool);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('secretRef', instance.secretRef?.toJson());
  writeNotNull('user', instance.user);
  return val;
}
