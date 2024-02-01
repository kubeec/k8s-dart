// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_secret.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Secret _$V1SecretFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Secret',
      json,
      ($checkedConvert) {
        final val = V1Secret(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
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
          stringData: $checkedConvert(
              'stringData',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SecretToJson(V1Secret instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('data', instance.data);
  writeNotNull('immutable', instance.immutable);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('stringData', instance.stringData);
  writeNotNull('type', instance.type);
  return val;
}
