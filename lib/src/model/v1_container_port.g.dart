// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerPort _$V1ContainerPortFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerPort',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['containerPort'],
        );
        final val = V1ContainerPort(
          containerPort: $checkedConvert('containerPort', (v) => v as int),
          hostIP: $checkedConvert('hostIP', (v) => v as String?),
          hostPort: $checkedConvert('hostPort', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          protocol: $checkedConvert('protocol', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerPortToJson(V1ContainerPort instance) {
  final val = <String, dynamic>{
    'containerPort': instance.containerPort,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostIP', instance.hostIP);
  writeNotNull('hostPort', instance.hostPort);
  writeNotNull('name', instance.name);
  writeNotNull('protocol', instance.protocol);
  return val;
}
