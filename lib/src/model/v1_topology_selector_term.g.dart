// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_topology_selector_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TopologySelectorTerm _$V1TopologySelectorTermFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TopologySelectorTerm',
      json,
      ($checkedConvert) {
        final val = V1TopologySelectorTerm(
          matchLabelExpressions: $checkedConvert(
              'matchLabelExpressions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1TopologySelectorLabelRequirement.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TopologySelectorTermToJson(
    V1TopologySelectorTerm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('matchLabelExpressions',
      instance.matchLabelExpressions?.map((e) => e.toJson()).toList());
  return val;
}
