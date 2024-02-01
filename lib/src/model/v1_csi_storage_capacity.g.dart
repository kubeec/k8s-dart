// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_csi_storage_capacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CSIStorageCapacity _$V1CSIStorageCapacityFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CSIStorageCapacity',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['storageClassName'],
        );
        final val = V1CSIStorageCapacity(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          capacity: $checkedConvert('capacity', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          maximumVolumeSize:
              $checkedConvert('maximumVolumeSize', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          nodeTopology: $checkedConvert(
              'nodeTopology',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          storageClassName:
              $checkedConvert('storageClassName', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CSIStorageCapacityToJson(
    V1CSIStorageCapacity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('capacity', instance.capacity);
  writeNotNull('kind', instance.kind);
  writeNotNull('maximumVolumeSize', instance.maximumVolumeSize);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('nodeTopology', instance.nodeTopology?.toJson());
  val['storageClassName'] = instance.storageClassName;
  return val;
}
