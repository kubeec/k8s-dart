// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_subject_rules_review_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SubjectRulesReviewStatus _$V1SubjectRulesReviewStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SubjectRulesReviewStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'incomplete',
            'nonResourceRules',
            'resourceRules'
          ],
        );
        final val = V1SubjectRulesReviewStatus(
          evaluationError:
              $checkedConvert('evaluationError', (v) => v as String?),
          incomplete: $checkedConvert('incomplete', (v) => v as bool),
          nonResourceRules: $checkedConvert(
              'nonResourceRules',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      V1NonResourceRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
          resourceRules: $checkedConvert(
              'resourceRules',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => V1ResourceRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SubjectRulesReviewStatusToJson(
    V1SubjectRulesReviewStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('evaluationError', instance.evaluationError);
  val['incomplete'] = instance.incomplete;
  val['nonResourceRules'] =
      instance.nonResourceRules.map((e) => e.toJson()).toList();
  val['resourceRules'] = instance.resourceRules.map((e) => e.toJson()).toList();
  return val;
}
