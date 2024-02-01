// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_config_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ConfigMap _$V1ConfigMapFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1ConfigMap',
      json,
      ($checkedConvert) {
        final val = V1ConfigMap(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          binaryData: $checkedConvert(
              'binaryData',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          data: $checkedConvert(
              'data',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          immutable: $checkedConvert('immutable', (v) => v as bool?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ConfigMapToJson(V1ConfigMap instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('binaryData', instance.binaryData);
  writeNotNull('data', instance.data);
  writeNotNull('immutable', instance.immutable);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  return val;
}
