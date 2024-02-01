// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_http_ingress_rule_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HTTPIngressRuleValue _$V1HTTPIngressRuleValueFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1HTTPIngressRuleValue',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['paths'],
        );
        final val = V1HTTPIngressRuleValue(
          paths: $checkedConvert(
              'paths',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      V1HTTPIngressPath.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HTTPIngressRuleValueToJson(
        V1HTTPIngressRuleValue instance) =>
    <String, dynamic>{
      'paths': instance.paths.map((e) => e.toJson()).toList(),
    };
