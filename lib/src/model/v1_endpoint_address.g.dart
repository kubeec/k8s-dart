// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_endpoint_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EndpointAddress _$V1EndpointAddressFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EndpointAddress',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['ip'],
        );
        final val = V1EndpointAddress(
          hostname: $checkedConvert('hostname', (v) => v as String?),
          ip: $checkedConvert('ip', (v) => v as String),
          nodeName: $checkedConvert('nodeName', (v) => v as String?),
          targetRef: $checkedConvert(
              'targetRef',
              (v) => v == null
                  ? null
                  : V1ObjectReference.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EndpointAddressToJson(V1EndpointAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostname', instance.hostname);
  val['ip'] = instance.ip;
  writeNotNull('nodeName', instance.nodeName);
  writeNotNull('targetRef', instance.targetRef?.toJson());
  return val;
}
