// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_endpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Endpoint _$V1EndpointFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Endpoint',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['addresses'],
        );
        final val = V1Endpoint(
          addresses: $checkedConvert('addresses',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          conditions: $checkedConvert(
              'conditions',
              (v) => v == null
                  ? null
                  : V1EndpointConditions.fromJson(v as Map<String, dynamic>)),
          deprecatedTopology: $checkedConvert(
              'deprecatedTopology',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          hints: $checkedConvert(
              'hints',
              (v) => v == null
                  ? null
                  : V1EndpointHints.fromJson(v as Map<String, dynamic>)),
          hostname: $checkedConvert('hostname', (v) => v as String?),
          nodeName: $checkedConvert('nodeName', (v) => v as String?),
          targetRef: $checkedConvert(
              'targetRef',
              (v) => v == null
                  ? null
                  : V1ObjectReference.fromJson(v as Map<String, dynamic>)),
          zone: $checkedConvert('zone', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EndpointToJson(V1Endpoint instance) {
  final val = <String, dynamic>{
    'addresses': instance.addresses,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('conditions', instance.conditions?.toJson());
  writeNotNull('deprecatedTopology', instance.deprecatedTopology);
  writeNotNull('hints', instance.hints?.toJson());
  writeNotNull('hostname', instance.hostname);
  writeNotNull('nodeName', instance.nodeName);
  writeNotNull('targetRef', instance.targetRef?.toJson());
  writeNotNull('zone', instance.zone);
  return val;
}
