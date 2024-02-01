// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_load_balancer_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LoadBalancerStatus _$V1LoadBalancerStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LoadBalancerStatus',
      json,
      ($checkedConvert) {
        final val = V1LoadBalancerStatus(
          ingress: $checkedConvert(
              'ingress',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1LoadBalancerIngress.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LoadBalancerStatusToJson(
    V1LoadBalancerStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ingress', instance.ingress?.map((e) => e.toJson()).toList());
  return val;
}
