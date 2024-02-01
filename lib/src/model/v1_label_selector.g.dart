// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_label_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LabelSelector _$V1LabelSelectorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LabelSelector',
      json,
      ($checkedConvert) {
        final val = V1LabelSelector(
          matchExpressions: $checkedConvert(
              'matchExpressions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1LabelSelectorRequirement.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          matchLabels: $checkedConvert(
              'matchLabels',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LabelSelectorToJson(V1LabelSelector instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('matchExpressions',
      instance.matchExpressions?.map((e) => e.toJson()).toList());
  writeNotNull('matchLabels', instance.matchLabels);
  return val;
}
