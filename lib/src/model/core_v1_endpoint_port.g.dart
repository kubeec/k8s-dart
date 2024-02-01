// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_v1_endpoint_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreV1EndpointPort _$CoreV1EndpointPortFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CoreV1EndpointPort',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['port'],
        );
        final val = CoreV1EndpointPort(
          appProtocol: $checkedConvert('appProtocol', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          port: $checkedConvert('port', (v) => v as int),
          protocol: $checkedConvert('protocol', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CoreV1EndpointPortToJson(CoreV1EndpointPort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appProtocol', instance.appProtocol);
  writeNotNull('name', instance.name);
  val['port'] = instance.port;
  writeNotNull('protocol', instance.protocol);
  return val;
}
