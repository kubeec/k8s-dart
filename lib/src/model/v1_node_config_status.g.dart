// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_config_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeConfigStatus _$V1NodeConfigStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeConfigStatus',
      json,
      ($checkedConvert) {
        final val = V1NodeConfigStatus(
          active: $checkedConvert(
              'active',
              (v) => v == null
                  ? null
                  : V1NodeConfigSource.fromJson(v as Map<String, dynamic>)),
          assigned: $checkedConvert(
              'assigned',
              (v) => v == null
                  ? null
                  : V1NodeConfigSource.fromJson(v as Map<String, dynamic>)),
          error: $checkedConvert('error', (v) => v as String?),
          lastKnownGood: $checkedConvert(
              'lastKnownGood',
              (v) => v == null
                  ? null
                  : V1NodeConfigSource.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeConfigStatusToJson(V1NodeConfigStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active?.toJson());
  writeNotNull('assigned', instance.assigned?.toJson());
  writeNotNull('error', instance.error);
  writeNotNull('lastKnownGood', instance.lastKnownGood?.toJson());
  return val;
}
