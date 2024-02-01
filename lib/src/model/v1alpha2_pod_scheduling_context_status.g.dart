// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_pod_scheduling_context_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2PodSchedulingContextStatus _$V1alpha2PodSchedulingContextStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2PodSchedulingContextStatus',
      json,
      ($checkedConvert) {
        final val = V1alpha2PodSchedulingContextStatus(
          resourceClaims: $checkedConvert(
              'resourceClaims',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha2ResourceClaimSchedulingStatus.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2PodSchedulingContextStatusToJson(
    V1alpha2PodSchedulingContextStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceClaims',
      instance.resourceClaims?.map((e) => e.toJson()).toList());
  return val;
}
