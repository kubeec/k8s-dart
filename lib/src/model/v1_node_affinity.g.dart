// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_affinity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeAffinity _$V1NodeAffinityFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeAffinity',
      json,
      ($checkedConvert) {
        final val = V1NodeAffinity(
          preferredDuringSchedulingIgnoredDuringExecution: $checkedConvert(
              'preferredDuringSchedulingIgnoredDuringExecution',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1PreferredSchedulingTerm.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          requiredDuringSchedulingIgnoredDuringExecution: $checkedConvert(
              'requiredDuringSchedulingIgnoredDuringExecution',
              (v) => v == null
                  ? null
                  : V1NodeSelector.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeAffinityToJson(V1NodeAffinity instance) {
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
  writeNotNull('requiredDuringSchedulingIgnoredDuringExecution',
      instance.requiredDuringSchedulingIgnoredDuringExecution?.toJson());
  return val;
}
