// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_http_ingress_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HTTPIngressPath _$V1HTTPIngressPathFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1HTTPIngressPath',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['backend', 'pathType'],
        );
        final val = V1HTTPIngressPath(
          backend: $checkedConvert('backend',
              (v) => V1IngressBackend.fromJson(v as Map<String, dynamic>)),
          path: $checkedConvert('path', (v) => v as String?),
          pathType: $checkedConvert('pathType', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HTTPIngressPathToJson(V1HTTPIngressPath instance) {
  final val = <String, dynamic>{
    'backend': instance.backend.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  val['pathType'] = instance.pathType;
  return val;
}
