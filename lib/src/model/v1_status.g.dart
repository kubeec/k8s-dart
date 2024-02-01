// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Status _$V1StatusFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Status',
      json,
      ($checkedConvert) {
        final val = V1Status(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as int?),
          details: $checkedConvert(
              'details',
              (v) => v == null
                  ? null
                  : V1StatusDetails.fromJson(v as Map<String, dynamic>)),
          kind: $checkedConvert('kind', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ListMeta.fromJson(v as Map<String, dynamic>)),
          reason: $checkedConvert('reason', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StatusToJson(V1Status instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('code', instance.code);
  writeNotNull('details', instance.details?.toJson());
  writeNotNull('kind', instance.kind);
  writeNotNull('message', instance.message);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('reason', instance.reason);
  writeNotNull('status', instance.status);
  return val;
}
