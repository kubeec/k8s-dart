// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_selector_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeSelectorTerm _$V1NodeSelectorTermFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeSelectorTerm',
      json,
      ($checkedConvert) {
        final val = V1NodeSelectorTerm(
          matchExpressions: $checkedConvert(
              'matchExpressions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1NodeSelectorRequirement.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          matchFields: $checkedConvert(
              'matchFields',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1NodeSelectorRequirement.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeSelectorTermToJson(V1NodeSelectorTerm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('matchExpressions',
      instance.matchExpressions?.map((e) => e.toJson()).toList());
  writeNotNull(
      'matchFields', instance.matchFields?.map((e) => e.toJson()).toList());
  return val;
}
