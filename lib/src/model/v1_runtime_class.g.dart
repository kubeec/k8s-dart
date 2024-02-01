// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_runtime_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RuntimeClass _$V1RuntimeClassFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1RuntimeClass',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['handler'],
        );
        final val = V1RuntimeClass(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          handler: $checkedConvert('handler', (v) => v as String),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          overhead: $checkedConvert(
              'overhead',
              (v) => v == null
                  ? null
                  : V1Overhead.fromJson(v as Map<String, dynamic>)),
          scheduling: $checkedConvert(
              'scheduling',
              (v) => v == null
                  ? null
                  : V1Scheduling.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RuntimeClassToJson(V1RuntimeClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['handler'] = instance.handler;
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('overhead', instance.overhead?.toJson());
  writeNotNull('scheduling', instance.scheduling?.toJson());
  return val;
}
