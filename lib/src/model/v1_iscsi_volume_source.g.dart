// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_iscsi_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ISCSIVolumeSource _$V1ISCSIVolumeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ISCSIVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['iqn', 'lun', 'targetPortal'],
        );
        final val = V1ISCSIVolumeSource(
          chapAuthDiscovery:
              $checkedConvert('chapAuthDiscovery', (v) => v as bool?),
          chapAuthSession:
              $checkedConvert('chapAuthSession', (v) => v as bool?),
          fsType: $checkedConvert('fsType', (v) => v as String?),
          initiatorName: $checkedConvert('initiatorName', (v) => v as String?),
          iqn: $checkedConvert('iqn', (v) => v as String),
          iscsiInterface:
              $checkedConvert('iscsiInterface', (v) => v as String?),
          lun: $checkedConvert('lun', (v) => v as int),
          portals: $checkedConvert('portals',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretRef: $checkedConvert(
              'secretRef',
              (v) => v == null
                  ? null
                  : V1LocalObjectReference.fromJson(v as Map<String, dynamic>)),
          targetPortal: $checkedConvert('targetPortal', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ISCSIVolumeSourceToJson(V1ISCSIVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('chapAuthDiscovery', instance.chapAuthDiscovery);
  writeNotNull('chapAuthSession', instance.chapAuthSession);
  writeNotNull('fsType', instance.fsType);
  writeNotNull('initiatorName', instance.initiatorName);
  val['iqn'] = instance.iqn;
  writeNotNull('iscsiInterface', instance.iscsiInterface);
  val['lun'] = instance.lun;
  writeNotNull('portals', instance.portals);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('secretRef', instance.secretRef?.toJson());
  val['targetPortal'] = instance.targetPortal;
  return val;
}
