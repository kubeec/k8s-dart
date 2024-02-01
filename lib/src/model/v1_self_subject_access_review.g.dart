// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_self_subject_access_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SelfSubjectAccessReview _$V1SelfSubjectAccessReviewFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SelfSubjectAccessReview',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1SelfSubjectAccessReview(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1SelfSubjectAccessReviewSpec.fromJson(
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

Map<String, dynamic> _$V1SelfSubjectAccessReviewToJson(
    V1SelfSubjectAccessReview instance) {
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
