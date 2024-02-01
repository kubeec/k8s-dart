// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_local_subject_access_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LocalSubjectAccessReview _$V1LocalSubjectAccessReviewFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LocalSubjectAccessReview',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1LocalSubjectAccessReview(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1SubjectAccessReviewSpec.fromJson(
                  v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1SubjectAccessReviewStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LocalSubjectAccessReviewToJson(
    V1LocalSubjectAccessReview instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec.toJson();
  writeNotNull('status', instance.status?.toJson());
  return val;
}
