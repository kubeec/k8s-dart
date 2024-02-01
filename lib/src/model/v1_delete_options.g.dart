// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_delete_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DeleteOptions _$V1DeleteOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DeleteOptions',
      json,
      ($checkedConvert) {
        final val = V1DeleteOptions(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          dryRun: $checkedConvert('dryRun',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          gracePeriodSeconds:
              $checkedConvert('gracePeriodSeconds', (v) => v as int?),
          kind: $checkedConvert('kind', (v) => v as String?),
          orphanDependents:
              $checkedConvert('orphanDependents', (v) => v as bool?),
          preconditions: $checkedConvert(
              'preconditions',
              (v) => v == null
                  ? null
                  : V1Preconditions.fromJson(v as Map<String, dynamic>)),
          propagationPolicy:
              $checkedConvert('propagationPolicy', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DeleteOptionsToJson(V1DeleteOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('dryRun', instance.dryRun);
  writeNotNull('gracePeriodSeconds', instance.gracePeriodSeconds);
  writeNotNull('kind', instance.kind);
  writeNotNull('orphanDependents', instance.orphanDependents);
  writeNotNull('preconditions', instance.preconditions?.toJson());
  writeNotNull('propagationPolicy', instance.propagationPolicy);
  return val;
}
