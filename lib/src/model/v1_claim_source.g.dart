// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_claim_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ClaimSource _$V1ClaimSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ClaimSource',
      json,
      ($checkedConvert) {
        final val = V1ClaimSource(
          resourceClaimName:
              $checkedConvert('resourceClaimName', (v) => v as String?),
          resourceClaimTemplateName:
              $checkedConvert('resourceClaimTemplateName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ClaimSourceToJson(V1ClaimSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceClaimName', instance.resourceClaimName);
  writeNotNull('resourceClaimTemplateName', instance.resourceClaimTemplateName);
  return val;
}
