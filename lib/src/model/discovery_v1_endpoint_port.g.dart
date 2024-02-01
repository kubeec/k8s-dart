// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovery_v1_endpoint_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoveryV1EndpointPort _$DiscoveryV1EndpointPortFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'DiscoveryV1EndpointPort',
      json,
      ($checkedConvert) {
        final val = DiscoveryV1EndpointPort(
          appProtocol: $checkedConvert('appProtocol', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          port: $checkedConvert('port', (v) => v as int?),
          protocol: $checkedConvert('protocol', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$DiscoveryV1EndpointPortToJson(
    DiscoveryV1EndpointPort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appProtocol', instance.appProtocol);
  writeNotNull('name', instance.name);
  writeNotNull('port', instance.port);
  writeNotNull('protocol', instance.protocol);
  return val;
}
