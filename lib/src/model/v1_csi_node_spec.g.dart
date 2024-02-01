// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_csi_node_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CSINodeSpec _$V1CSINodeSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CSINodeSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['drivers'],
        );
        final val = V1CSINodeSpec(
          drivers: $checkedConvert(
              'drivers',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      V1CSINodeDriver.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CSINodeSpecToJson(V1CSINodeSpec instance) =>
    <String, dynamic>{
      'drivers': instance.drivers.map((e) => e.toJson()).toList(),
    };
