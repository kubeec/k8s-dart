// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeStatus _$V1NodeStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeStatus',
      json,
      ($checkedConvert) {
        final val = V1NodeStatus(
          addresses: $checkedConvert(
              'addresses',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1NodeAddress.fromJson(e as Map<String, dynamic>))
                  .toList()),
          allocatable: $checkedConvert(
              'allocatable',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          capacity: $checkedConvert(
              'capacity',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1NodeCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          config: $checkedConvert(
              'config',
              (v) => v == null
                  ? null
                  : V1NodeConfigStatus.fromJson(v as Map<String, dynamic>)),
          daemonEndpoints: $checkedConvert(
              'daemonEndpoints',
              (v) => v == null
                  ? null
                  : V1NodeDaemonEndpoints.fromJson(v as Map<String, dynamic>)),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ContainerImage.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nodeInfo: $checkedConvert(
              'nodeInfo',
              (v) => v == null
                  ? null
                  : V1NodeSystemInfo.fromJson(v as Map<String, dynamic>)),
          phase: $checkedConvert('phase', (v) => v as String?),
          volumesAttached: $checkedConvert(
              'volumesAttached',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1AttachedVolume.fromJson(e as Map<String, dynamic>))
                  .toList()),
          volumesInUse: $checkedConvert('volumesInUse',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeStatusToJson(V1NodeStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'addresses', instance.addresses?.map((e) => e.toJson()).toList());
  writeNotNull('allocatable', instance.allocatable);
  writeNotNull('capacity', instance.capacity);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('config', instance.config?.toJson());
  writeNotNull('daemonEndpoints', instance.daemonEndpoints?.toJson());
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull('nodeInfo', instance.nodeInfo?.toJson());
  writeNotNull('phase', instance.phase);
  writeNotNull('volumesAttached',
      instance.volumesAttached?.map((e) => e.toJson()).toList());
  writeNotNull('volumesInUse', instance.volumesInUse);
  return val;
}
