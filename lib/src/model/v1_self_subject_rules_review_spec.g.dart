// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_self_subject_rules_review_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SelfSubjectRulesReviewSpec _$V1SelfSubjectRulesReviewSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SelfSubjectRulesReviewSpec',
      json,
      ($checkedConvert) {
        final val = V1SelfSubjectRulesReviewSpec(
          namespace: $checkedConvert('namespace', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SelfSubjectRulesReviewSpecToJson(
    V1SelfSubjectRulesReviewSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('namespace', instance.namespace);
  return val;
}
