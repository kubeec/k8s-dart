// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_class_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressClassSpec _$V1IngressClassSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressClassSpec',
      json,
      ($checkedConvert) {
        final val = V1IngressClassSpec(
          controller: $checkedConvert('controller', (v) => v as String?),
          parameters: $checkedConvert(
              'parameters',
              (v) => v == null
                  ? null
                  : V1IngressClassParametersReference.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressClassSpecToJson(V1IngressClassSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('controller', instance.controller);
  writeNotNull('parameters', instance.parameters?.toJson());
  return val;
}
