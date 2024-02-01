// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_token_review_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TokenReviewStatus _$V1TokenReviewStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TokenReviewStatus',
      json,
      ($checkedConvert) {
        final val = V1TokenReviewStatus(
          audiences: $checkedConvert('audiences',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          authenticated: $checkedConvert('authenticated', (v) => v as bool?),
          error: $checkedConvert('error', (v) => v as String?),
          user: $checkedConvert(
              'user',
              (v) => v == null
                  ? null
                  : V1UserInfo.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TokenReviewStatusToJson(V1TokenReviewStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('audiences', instance.audiences);
  writeNotNull('authenticated', instance.authenticated);
  writeNotNull('error', instance.error);
  writeNotNull('user', instance.user?.toJson());
  return val;
}
