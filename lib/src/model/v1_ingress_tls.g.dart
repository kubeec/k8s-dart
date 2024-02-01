// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_tls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressTLS _$V1IngressTLSFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressTLS',
      json,
      ($checkedConvert) {
        final val = V1IngressTLS(
          hosts: $checkedConvert('hosts',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          secretName: $checkedConvert('secretName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressTLSToJson(V1IngressTLS instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hosts', instance.hosts);
  writeNotNull('secretName', instance.secretName);
  return val;
}
