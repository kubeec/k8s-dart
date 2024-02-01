// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_cluster_cidr_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ClusterCIDRSpec _$V1alpha1ClusterCIDRSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ClusterCIDRSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['perNodeHostBits'],
        );
        final val = V1alpha1ClusterCIDRSpec(
          ipv4: $checkedConvert('ipv4', (v) => v as String?),
          ipv6: $checkedConvert('ipv6', (v) => v as String?),
          nodeSelector: $checkedConvert(
              'nodeSelector',
              (v) => v == null
                  ? null
                  : V1NodeSelector.fromJson(v as Map<String, dynamic>)),
          perNodeHostBits: $checkedConvert('perNodeHostBits', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ClusterCIDRSpecToJson(
    V1alpha1ClusterCIDRSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ipv4', instance.ipv4);
  writeNotNull('ipv6', instance.ipv6);
  writeNotNull('nodeSelector', instance.nodeSelector?.toJson());
  val['perNodeHostBits'] = instance.perNodeHostBits;
  return val;
}
