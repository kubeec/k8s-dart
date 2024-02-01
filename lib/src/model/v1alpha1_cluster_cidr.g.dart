// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_cluster_cidr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ClusterCIDR _$V1alpha1ClusterCIDRFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ClusterCIDR',
      json,
      ($checkedConvert) {
        final val = V1alpha1ClusterCIDR(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1alpha1ClusterCIDRSpec.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ClusterCIDRToJson(V1alpha1ClusterCIDR instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('spec', instance.spec?.toJson());
  return val;
}
