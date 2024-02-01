// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_flow_distinguisher_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2FlowDistinguisherMethod _$V1beta2FlowDistinguisherMethodFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2FlowDistinguisherMethod',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V1beta2FlowDistinguisherMethod(
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2FlowDistinguisherMethodToJson(
        V1beta2FlowDistinguisherMethod instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
