// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_claim_consumer_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClaimConsumerReference
    _$V1alpha2ResourceClaimConsumerReferenceFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1alpha2ResourceClaimConsumerReference',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['name', 'resource', 'uid'],
            );
            final val = V1alpha2ResourceClaimConsumerReference(
              apiGroup: $checkedConvert('apiGroup', (v) => v as String?),
              name: $checkedConvert('name', (v) => v as String),
              resource: $checkedConvert('resource', (v) => v as String),
              uid: $checkedConvert('uid', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1alpha2ResourceClaimConsumerReferenceToJson(
    V1alpha2ResourceClaimConsumerReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroup', instance.apiGroup);
  val['name'] = instance.name;
  val['resource'] = instance.resource;
  val['uid'] = instance.uid;
  return val;
}
