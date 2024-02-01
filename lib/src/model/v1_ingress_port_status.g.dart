// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_port_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressPortStatus _$V1IngressPortStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressPortStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['port', 'protocol'],
        );
        final val = V1IngressPortStatus(
          error: $checkedConvert('error', (v) => v as String?),
          port: $checkedConvert('port', (v) => v as int),
          protocol: $checkedConvert('protocol', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressPortStatusToJson(V1IngressPortStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.error);
  val['port'] = instance.port;
  val['protocol'] = instance.protocol;
  return val;
}
