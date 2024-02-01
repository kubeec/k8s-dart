// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_resource_claim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ResourceClaim _$V1ResourceClaimFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ResourceClaim',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1ResourceClaim(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ResourceClaimToJson(V1ResourceClaim instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
