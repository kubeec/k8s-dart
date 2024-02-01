// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressStatus _$V1IngressStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressStatus',
      json,
      ($checkedConvert) {
        final val = V1IngressStatus(
          loadBalancer: $checkedConvert(
              'loadBalancer',
              (v) => v == null
                  ? null
                  : V1IngressLoadBalancerStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressStatusToJson(V1IngressStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loadBalancer', instance.loadBalancer?.toJson());
  return val;
}
