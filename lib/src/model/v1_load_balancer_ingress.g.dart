// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_load_balancer_ingress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LoadBalancerIngress _$V1LoadBalancerIngressFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LoadBalancerIngress',
      json,
      ($checkedConvert) {
        final val = V1LoadBalancerIngress(
          hostname: $checkedConvert('hostname', (v) => v as String?),
          ip: $checkedConvert('ip', (v) => v as String?),
          ports: $checkedConvert(
              'ports',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1PortStatus.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LoadBalancerIngressToJson(
    V1LoadBalancerIngress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostname', instance.hostname);
  writeNotNull('ip', instance.ip);
  writeNotNull('ports', instance.ports?.map((e) => e.toJson()).toList());
  return val;
}
