// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_token_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TokenReview _$V1TokenReviewFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TokenReview',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1TokenReview(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert('spec',
              (v) => V1TokenReviewSpec.fromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1TokenReviewStatus.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TokenReviewToJson(V1TokenReview instance) {
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
