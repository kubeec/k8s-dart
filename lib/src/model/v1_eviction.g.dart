// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_eviction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Eviction _$V1EvictionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Eviction',
      json,
      ($checkedConvert) {
        final val = V1Eviction(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          deleteOptions: $checkedConvert(
              'deleteOptions',
              (v) => v == null
                  ? null
                  : V1DeleteOptions.fromJson(v as Map<String, dynamic>)),
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

Map<String, dynamic> _$V1EvictionToJson(V1Eviction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('deleteOptions', instance.deleteOptions?.toJson());
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  return val;
}
