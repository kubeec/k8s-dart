// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_service_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ServicePort _$V1ServicePortFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ServicePort',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['port'],
        );
        final val = V1ServicePort(
          appProtocol: $checkedConvert('appProtocol', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          nodePort: $checkedConvert('nodePort', (v) => v as int?),
          port: $checkedConvert('port', (v) => v as int),
          protocol: $checkedConvert('protocol', (v) => v as String?),
          targetPort: $checkedConvert('targetPort', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ServicePortToJson(V1ServicePort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appProtocol', instance.appProtocol);
  writeNotNull('name', instance.name);
  writeNotNull('nodePort', instance.nodePort);
  val['port'] = instance.port;
  writeNotNull('protocol', instance.protocol);
  writeNotNull('targetPort', instance.targetPort);
  return val;
}
