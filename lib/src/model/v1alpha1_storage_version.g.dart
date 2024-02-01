// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_storage_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1StorageVersion _$V1alpha1StorageVersionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1StorageVersion',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec', 'status'],
        );
        final val = V1alpha1StorageVersion(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert('spec', (v) => v as Object),
          status: $checkedConvert(
              'status',
              (v) => V1alpha1StorageVersionStatus.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1StorageVersionToJson(
    V1alpha1StorageVersion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec;
  val['status'] = instance.status.toJson();
  return val;
}
