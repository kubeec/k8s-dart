// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_load_balancer_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressLoadBalancerStatus _$V1IngressLoadBalancerStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressLoadBalancerStatus',
      json,
      ($checkedConvert) {
        final val = V1IngressLoadBalancerStatus(
          ingress: $checkedConvert(
              'ingress',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1IngressLoadBalancerIngress.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressLoadBalancerStatusToJson(
    V1IngressLoadBalancerStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ingress', instance.ingress?.map((e) => e.toJson()).toList());
  return val;
}
