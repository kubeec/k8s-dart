// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_claim_scheduling_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClaimSchedulingStatus
    _$V1alpha2ResourceClaimSchedulingStatusFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1alpha2ResourceClaimSchedulingStatus',
          json,
          ($checkedConvert) {
            final val = V1alpha2ResourceClaimSchedulingStatus(
              name: $checkedConvert('name', (v) => v as String?),
              unsuitableNodes: $checkedConvert(
                  'unsuitableNodes',
                  (v) =>
                      (v as List<dynamic>?)?.map((e) => e as String).toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1alpha2ResourceClaimSchedulingStatusToJson(
    V1alpha2ResourceClaimSchedulingStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('unsuitableNodes', instance.unsuitableNodes);
  return val;
}
