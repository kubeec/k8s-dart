// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_self_subject_review_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1SelfSubjectReviewStatus _$V1alpha1SelfSubjectReviewStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1SelfSubjectReviewStatus',
      json,
      ($checkedConvert) {
        final val = V1alpha1SelfSubjectReviewStatus(
          userInfo: $checkedConvert(
              'userInfo',
              (v) => v == null
                  ? null
                  : V1UserInfo.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1SelfSubjectReviewStatusToJson(
    V1alpha1SelfSubjectReviewStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userInfo', instance.userInfo?.toJson());
  return val;
}
