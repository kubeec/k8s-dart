// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_self_subject_access_review_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SelfSubjectAccessReviewSpec _$V1SelfSubjectAccessReviewSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SelfSubjectAccessReviewSpec',
      json,
      ($checkedConvert) {
        final val = V1SelfSubjectAccessReviewSpec(
          nonResourceAttributes: $checkedConvert(
              'nonResourceAttributes',
              (v) => v == null
                  ? null
                  : V1NonResourceAttributes.fromJson(
                      v as Map<String, dynamic>)),
          resourceAttributes: $checkedConvert(
              'resourceAttributes',
              (v) => v == null
                  ? null
                  : V1ResourceAttributes.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SelfSubjectAccessReviewSpecToJson(
    V1SelfSubjectAccessReviewSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'nonResourceAttributes', instance.nonResourceAttributes?.toJson());
  writeNotNull('resourceAttributes', instance.resourceAttributes?.toJson());
  return val;
}
