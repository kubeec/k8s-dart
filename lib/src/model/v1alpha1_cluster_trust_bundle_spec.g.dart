// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_cluster_trust_bundle_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ClusterTrustBundleSpec _$V1alpha1ClusterTrustBundleSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ClusterTrustBundleSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['trustBundle'],
        );
        final val = V1alpha1ClusterTrustBundleSpec(
          signerName: $checkedConvert('signerName', (v) => v as String?),
          trustBundle: $checkedConvert('trustBundle', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ClusterTrustBundleSpecToJson(
    V1alpha1ClusterTrustBundleSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('signerName', instance.signerName);
  val['trustBundle'] = instance.trustBundle;
  return val;
}
