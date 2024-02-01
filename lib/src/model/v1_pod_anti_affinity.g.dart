// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_anti_affinity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodAntiAffinity _$V1PodAntiAffinityFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodAntiAffinity',
      json,
      ($checkedConvert) {
        final val = V1PodAntiAffinity(
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

Map<String, dynamic> _$V1PodAntiAffinityToJson(V1PodAntiAffinity instance) {
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
