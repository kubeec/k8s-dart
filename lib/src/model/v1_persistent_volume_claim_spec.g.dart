// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_persistent_volume_claim_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PersistentVolumeClaimSpec _$V1PersistentVolumeClaimSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PersistentVolumeClaimSpec',
      json,
      ($checkedConvert) {
        final val = V1PersistentVolumeClaimSpec(
          accessModes: $checkedConvert('accessModes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          dataSource: $checkedConvert(
              'dataSource',
              (v) => v == null
                  ? null
                  : V1TypedLocalObjectReference.fromJson(
                      v as Map<String, dynamic>)),
          dataSourceRef: $checkedConvert(
              'dataSourceRef',
              (v) => v == null
                  ? null
                  : V1TypedObjectReference.fromJson(v as Map<String, dynamic>)),
          resources: $checkedConvert(
              'resources',
              (v) => v == null
                  ? null
                  : V1ResourceRequirements.fromJson(v as Map<String, dynamic>)),
          selector: $checkedConvert(
              'selector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          storageClassName:
              $checkedConvert('storageClassName', (v) => v as String?),
          volumeMode: $checkedConvert('volumeMode', (v) => v as String?),
          volumeName: $checkedConvert('volumeName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PersistentVolumeClaimSpecToJson(
    V1PersistentVolumeClaimSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accessModes', instance.accessModes);
  writeNotNull('dataSource', instance.dataSource?.toJson());
  writeNotNull('dataSourceRef', instance.dataSourceRef?.toJson());
  writeNotNull('resources', instance.resources?.toJson());
  writeNotNull('selector', instance.selector?.toJson());
  writeNotNull('storageClassName', instance.storageClassName);
  writeNotNull('volumeMode', instance.volumeMode);
  writeNotNull('volumeName', instance.volumeName);
  return val;
}
