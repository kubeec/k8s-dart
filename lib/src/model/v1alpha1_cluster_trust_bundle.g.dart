// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_cluster_trust_bundle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ClusterTrustBundle _$V1alpha1ClusterTrustBundleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ClusterTrustBundle',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1alpha1ClusterTrustBundle(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1alpha1ClusterTrustBundleSpec.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ClusterTrustBundleToJson(
    V1alpha1ClusterTrustBundle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec.toJson();
  return val;
}
