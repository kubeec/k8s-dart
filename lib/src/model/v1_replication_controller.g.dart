// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_replication_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ReplicationController _$V1ReplicationControllerFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ReplicationController',
      json,
      ($checkedConvert) {
        final val = V1ReplicationController(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1ReplicationControllerSpec.fromJson(
                      v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1ReplicationControllerStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ReplicationControllerToJson(
    V1ReplicationController instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('spec', instance.spec?.toJson());
  writeNotNull('status', instance.status?.toJson());
  return val;
}
