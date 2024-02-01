// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressRule _$V1IngressRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressRule',
      json,
      ($checkedConvert) {
        final val = V1IngressRule(
          host: $checkedConvert('host', (v) => v as String?),
          http: $checkedConvert(
              'http',
              (v) => v == null
                  ? null
                  : V1HTTPIngressRuleValue.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressRuleToJson(V1IngressRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('host', instance.host);
  writeNotNull('http', instance.http?.toJson());
  return val;
}
