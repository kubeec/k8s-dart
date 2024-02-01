// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_tcp_socket_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TCPSocketAction _$V1TCPSocketActionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TCPSocketAction',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['port'],
        );
        final val = V1TCPSocketAction(
          host: $checkedConvert('host', (v) => v as String?),
          port: $checkedConvert('port', (v) => v as Object),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TCPSocketActionToJson(V1TCPSocketAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('host', instance.host);
  val['port'] = instance.port;
  return val;
}
