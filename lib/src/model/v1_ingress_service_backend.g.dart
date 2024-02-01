// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_service_backend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressServiceBackend _$V1IngressServiceBackendFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressServiceBackend',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1IngressServiceBackend(
          name: $checkedConvert('name', (v) => v as String),
          port: $checkedConvert(
              'port',
              (v) => v == null
                  ? null
                  : V1ServiceBackendPort.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressServiceBackendToJson(
    V1IngressServiceBackend instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('port', instance.port?.toJson());
  return val;
}
