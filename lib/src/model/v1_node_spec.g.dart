// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeSpec _$V1NodeSpecFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1NodeSpec',
      json,
      ($checkedConvert) {
        final val = V1NodeSpec(
          configSource: $checkedConvert(
              'configSource',
              (v) => v == null
                  ? null
                  : V1NodeConfigSource.fromJson(v as Map<String, dynamic>)),
          externalID: $checkedConvert('externalID', (v) => v as String?),
          podCIDR: $checkedConvert('podCIDR', (v) => v as String?),
          podCIDRs: $checkedConvert('podCIDRs',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          providerID: $checkedConvert('providerID', (v) => v as String?),
          taints: $checkedConvert(
              'taints',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Taint.fromJson(e as Map<String, dynamic>))
                  .toList()),
          unschedulable: $checkedConvert('unschedulable', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeSpecToJson(V1NodeSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('configSource', instance.configSource?.toJson());
  writeNotNull('externalID', instance.externalID);
  writeNotNull('podCIDR', instance.podCIDR);
  writeNotNull('podCIDRs', instance.podCIDRs);
  writeNotNull('providerID', instance.providerID);
  writeNotNull('taints', instance.taints?.map((e) => e.toJson()).toList());
  writeNotNull('unschedulable', instance.unschedulable);
  return val;
}
