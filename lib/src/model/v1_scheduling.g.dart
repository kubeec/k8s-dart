// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_scheduling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Scheduling _$V1SchedulingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1Scheduling',
      json,
      ($checkedConvert) {
        final val = V1Scheduling(
          nodeSelector: $checkedConvert(
              'nodeSelector',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          tolerations: $checkedConvert(
              'tolerations',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Toleration.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SchedulingToJson(V1Scheduling instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nodeSelector', instance.nodeSelector);
  writeNotNull(
      'tolerations', instance.tolerations?.map((e) => e.toJson()).toList());
  return val;
}
