// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_affinity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodAffinity _$V1PodAffinityFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodAffinity',
      json,
      ($checkedConvert) {
        final val = V1PodAffinity(
          preferredDuringSchedulingIgnoredDuringExecution: $checkedConvert(
              'preferredDuringSchedulingIgnoredDuringExecution',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1WeightedPodAffinityTerm.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          requiredDuringSchedulingIgnoredDuringExecution: $checkedConvert(
              'requiredDuringSchedulingIgnoredDuringExecution',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1PodAffinityTerm.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodAffinityToJson(V1PodAffinity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'preferredDuringSchedulingIgnoredDuringExecution',
      instance.preferredDuringSchedulingIgnoredDuringExecution
          ?.map((e) => e.toJson())
          .toList());
  writeNotNull(
      'requiredDuringSchedulingIgnoredDuringExecution',
      instance.requiredDuringSchedulingIgnoredDuringExecution
          ?.map((e) => e.toJson())
          .toList());
  return val;
}
