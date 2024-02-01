// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_config_map_node_config_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ConfigMapNodeConfigSource _$V1ConfigMapNodeConfigSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ConfigMapNodeConfigSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kubeletConfigKey', 'name', 'namespace'],
        );
        final val = V1ConfigMapNodeConfigSource(
          kubeletConfigKey:
              $checkedConvert('kubeletConfigKey', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          namespace: $checkedConvert('namespace', (v) => v as String),
          resourceVersion:
              $checkedConvert('resourceVersion', (v) => v as String?),
          uid: $checkedConvert('uid', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ConfigMapNodeConfigSourceToJson(
    V1ConfigMapNodeConfigSource instance) {
  final val = <String, dynamic>{
    'kubeletConfigKey': instance.kubeletConfigKey,
    'name': instance.name,
    'namespace': instance.namespace,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceVersion', instance.resourceVersion);
  writeNotNull('uid', instance.uid);
  return val;
}
