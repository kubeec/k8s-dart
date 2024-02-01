// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_flow_distinguisher_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3FlowDistinguisherMethod _$V1beta3FlowDistinguisherMethodFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3FlowDistinguisherMethod',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V1beta3FlowDistinguisherMethod(
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3FlowDistinguisherMethodToJson(
        V1beta3FlowDistinguisherMethod instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
