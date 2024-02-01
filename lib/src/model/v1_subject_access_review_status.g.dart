// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_subject_access_review_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SubjectAccessReviewStatus _$V1SubjectAccessReviewStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SubjectAccessReviewStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['allowed'],
        );
        final val = V1SubjectAccessReviewStatus(
          allowed: $checkedConvert('allowed', (v) => v as bool),
          denied: $checkedConvert('denied', (v) => v as bool?),
          evaluationError:
              $checkedConvert('evaluationError', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SubjectAccessReviewStatusToJson(
    V1SubjectAccessReviewStatus instance) {
  final val = <String, dynamic>{
    'allowed': instance.allowed,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('denied', instance.denied);
  writeNotNull('evaluationError', instance.evaluationError);
  writeNotNull('reason', instance.reason);
  return val;
}
