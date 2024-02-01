// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_storage_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StorageClass _$V1StorageClassFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StorageClass',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['provisioner'],
        );
        final val = V1StorageClass(
          allowVolumeExpansion:
              $checkedConvert('allowVolumeExpansion', (v) => v as bool?),
          allowedTopologies: $checkedConvert(
              'allowedTopologies',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1TopologySelectorTerm.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          mountOptions: $checkedConvert('mountOptions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          parameters: $checkedConvert(
              'parameters',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          provisioner: $checkedConvert('provisioner', (v) => v as String),
          reclaimPolicy: $checkedConvert('reclaimPolicy', (v) => v as String?),
          volumeBindingMode:
              $checkedConvert('volumeBindingMode', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StorageClassToJson(V1StorageClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allowVolumeExpansion', instance.allowVolumeExpansion);
  writeNotNull('allowedTopologies',
      instance.allowedTopologies?.map((e) => e.toJson()).toList());
  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('mountOptions', instance.mountOptions);
  writeNotNull('parameters', instance.parameters);
  val['provisioner'] = instance.provisioner;
  writeNotNull('reclaimPolicy', instance.reclaimPolicy);
  writeNotNull('volumeBindingMode', instance.volumeBindingMode);
  return val;
}
