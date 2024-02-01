// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_service_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ServiceStatus _$V1ServiceStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ServiceStatus',
      json,
      ($checkedConvert) {
        final val = V1ServiceStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Condition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          loadBalancer: $checkedConvert(
              'loadBalancer',
              (v) => v == null
                  ? null
                  : V1LoadBalancerStatus.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ServiceStatusToJson(V1ServiceStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('loadBalancer', instance.loadBalancer?.toJson());
  return val;
}
