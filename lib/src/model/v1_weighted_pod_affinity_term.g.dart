// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_weighted_pod_affinity_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1WeightedPodAffinityTerm _$V1WeightedPodAffinityTermFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1WeightedPodAffinityTerm',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['podAffinityTerm', 'weight'],
        );
        final val = V1WeightedPodAffinityTerm(
          podAffinityTerm: $checkedConvert('podAffinityTerm',
              (v) => V1PodAffinityTerm.fromJson(v as Map<String, dynamic>)),
          weight: $checkedConvert('weight', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1WeightedPodAffinityTermToJson(
        V1WeightedPodAffinityTerm instance) =>
    <String, dynamic>{
      'podAffinityTerm': instance.podAffinityTerm.toJson(),
      'weight': instance.weight,
    };
