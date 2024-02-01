// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_claim_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClaimStatus _$V1alpha2ResourceClaimStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2ResourceClaimStatus',
      json,
      ($checkedConvert) {
        final val = V1alpha2ResourceClaimStatus(
          allocation: $checkedConvert(
              'allocation',
              (v) => v == null
                  ? null
                  : V1alpha2AllocationResult.fromJson(
                      v as Map<String, dynamic>)),
          deallocationRequested:
              $checkedConvert('deallocationRequested', (v) => v as bool?),
          driverName: $checkedConvert('driverName', (v) => v as String?),
          reservedFor: $checkedConvert(
              'reservedFor',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha2ResourceClaimConsumerReference.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2ResourceClaimStatusToJson(
    V1alpha2ResourceClaimStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allocation', instance.allocation?.toJson());
  writeNotNull('deallocationRequested', instance.deallocationRequested);
  writeNotNull('driverName', instance.driverName);
  writeNotNull(
      'reservedFor', instance.reservedFor?.map((e) => e.toJson()).toList());
  return val;
}
