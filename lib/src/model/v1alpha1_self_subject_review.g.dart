// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_self_subject_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1SelfSubjectReview _$V1alpha1SelfSubjectReviewFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1SelfSubjectReview',
      json,
      ($checkedConvert) {
        final val = V1alpha1SelfSubjectReview(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1alpha1SelfSubjectReviewStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1SelfSubjectReviewToJson(
    V1alpha1SelfSubjectReview instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('status', instance.status?.toJson());
  return val;
}
