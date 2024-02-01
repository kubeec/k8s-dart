// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressClass _$V1IngressClassFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressClass',
      json,
      ($checkedConvert) {
        final val = V1IngressClass(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1IngressClassSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressClassToJson(V1IngressClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('spec', instance.spec?.toJson());
  return val;
}
