// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_network_policy_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NetworkPolicyPort _$V1NetworkPolicyPortFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NetworkPolicyPort',
      json,
      ($checkedConvert) {
        final val = V1NetworkPolicyPort(
          endPort: $checkedConvert('endPort', (v) => v as int?),
          port: $checkedConvert('port', (v) => v),
          protocol: $checkedConvert('protocol', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NetworkPolicyPortToJson(V1NetworkPolicyPort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('endPort', instance.endPort);
  writeNotNull('port', instance.port);
  writeNotNull('protocol', instance.protocol);
  return val;
}
