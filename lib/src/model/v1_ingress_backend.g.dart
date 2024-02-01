// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_backend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressBackend _$V1IngressBackendFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressBackend',
      json,
      ($checkedConvert) {
        final val = V1IngressBackend(
          resource: $checkedConvert(
              'resource',
              (v) => v == null
                  ? null
                  : V1TypedLocalObjectReference.fromJson(
                      v as Map<String, dynamic>)),
          service: $checkedConvert(
              'service',
              (v) => v == null
                  ? null
                  : V1IngressServiceBackend.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressBackendToJson(V1IngressBackend instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('service', instance.service?.toJson());
  return val;
}
