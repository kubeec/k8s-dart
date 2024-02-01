// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_resource_claim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodResourceClaim _$V1PodResourceClaimFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodResourceClaim',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1PodResourceClaim(
          name: $checkedConvert('name', (v) => v as String),
          source_: $checkedConvert(
              'source',
              (v) => v == null
                  ? null
                  : V1ClaimSource.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'source_': 'source'},
    );

Map<String, dynamic> _$V1PodResourceClaimToJson(V1PodResourceClaim instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source', instance.source_?.toJson());
  return val;
}
