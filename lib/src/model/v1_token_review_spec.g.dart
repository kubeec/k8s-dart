// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_token_review_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TokenReviewSpec _$V1TokenReviewSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TokenReviewSpec',
      json,
      ($checkedConvert) {
        final val = V1TokenReviewSpec(
          audiences: $checkedConvert('audiences',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          token: $checkedConvert('token', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TokenReviewSpecToJson(V1TokenReviewSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('audiences', instance.audiences);
  writeNotNull('token', instance.token);
  return val;
}
