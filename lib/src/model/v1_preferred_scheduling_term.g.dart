// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_preferred_scheduling_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PreferredSchedulingTerm _$V1PreferredSchedulingTermFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PreferredSchedulingTerm',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['preference', 'weight'],
        );
        final val = V1PreferredSchedulingTerm(
          preference: $checkedConvert('preference',
              (v) => V1NodeSelectorTerm.fromJson(v as Map<String, dynamic>)),
          weight: $checkedConvert('weight', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PreferredSchedulingTermToJson(
        V1PreferredSchedulingTerm instance) =>
    <String, dynamic>{
      'preference': instance.preference.toJson(),
      'weight': instance.weight,
    };
