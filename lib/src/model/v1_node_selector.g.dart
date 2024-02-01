// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeSelector _$V1NodeSelectorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeSelector',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['nodeSelectorTerms'],
        );
        final val = V1NodeSelector(
          nodeSelectorTerms: $checkedConvert(
              'nodeSelectorTerms',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      V1NodeSelectorTerm.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeSelectorToJson(V1NodeSelector instance) =>
    <String, dynamic>{
      'nodeSelectorTerms':
          instance.nodeSelectorTerms.map((e) => e.toJson()).toList(),
    };
