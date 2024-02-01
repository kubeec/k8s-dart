// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_csi_node_driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CSINodeDriver _$V1CSINodeDriverFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CSINodeDriver',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'nodeID'],
        );
        final val = V1CSINodeDriver(
          allocatable: $checkedConvert(
              'allocatable',
              (v) => v == null
                  ? null
                  : V1VolumeNodeResources.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String),
          nodeID: $checkedConvert('nodeID', (v) => v as String),
          topologyKeys: $checkedConvert('topologyKeys',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CSINodeDriverToJson(V1CSINodeDriver instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allocatable', instance.allocatable?.toJson());
  val['name'] = instance.name;
  val['nodeID'] = instance.nodeID;
  writeNotNull('topologyKeys', instance.topologyKeys);
  return val;
}
