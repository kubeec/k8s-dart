// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_controller_revision.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ControllerRevision _$V1ControllerRevisionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ControllerRevision',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['revision'],
        );
        final val = V1ControllerRevision(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          data: $checkedConvert('data', (v) => v),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          revision: $checkedConvert('revision', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ControllerRevisionToJson(
    V1ControllerRevision instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('data', instance.data);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['revision'] = instance.revision;
  return val;
}
