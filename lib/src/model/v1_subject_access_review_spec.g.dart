// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_subject_access_review_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SubjectAccessReviewSpec _$V1SubjectAccessReviewSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SubjectAccessReviewSpec',
      json,
      ($checkedConvert) {
        final val = V1SubjectAccessReviewSpec(
          extra: $checkedConvert(
              'extra',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k,
                        (e as List<dynamic>).map((e) => e as String).toList()),
                  )),
          groups: $checkedConvert('groups',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
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
          uid: $checkedConvert('uid', (v) => v as String?),
          user: $checkedConvert('user', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SubjectAccessReviewSpecToJson(
    V1SubjectAccessReviewSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('extra', instance.extra);
  writeNotNull('groups', instance.groups);
  writeNotNull(
      'nonResourceAttributes', instance.nonResourceAttributes?.toJson());
  writeNotNull('resourceAttributes', instance.resourceAttributes?.toJson());
  writeNotNull('uid', instance.uid);
  writeNotNull('user', instance.user);
  return val;
}
