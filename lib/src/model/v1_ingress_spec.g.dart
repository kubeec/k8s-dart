// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressSpec _$V1IngressSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressSpec',
      json,
      ($checkedConvert) {
        final val = V1IngressSpec(
          defaultBackend: $checkedConvert(
              'defaultBackend',
              (v) => v == null
                  ? null
                  : V1IngressBackend.fromJson(v as Map<String, dynamic>)),
          ingressClassName:
              $checkedConvert('ingressClassName', (v) => v as String?),
          rules: $checkedConvert(
              'rules',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1IngressRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
          tls: $checkedConvert(
              'tls',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1IngressTLS.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressSpecToJson(V1IngressSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultBackend', instance.defaultBackend?.toJson());
  writeNotNull('ingressClassName', instance.ingressClassName);
  writeNotNull('rules', instance.rules?.map((e) => e.toJson()).toList());
  writeNotNull('tls', instance.tls?.map((e) => e.toJson()).toList());
  return val;
}
