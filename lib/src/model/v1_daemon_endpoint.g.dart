// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_daemon_endpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DaemonEndpoint _$V1DaemonEndpointFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DaemonEndpoint',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['Port'],
        );
        final val = V1DaemonEndpoint(
          port: $checkedConvert('Port', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'port': 'Port'},
    );

Map<String, dynamic> _$V1DaemonEndpointToJson(V1DaemonEndpoint instance) =>
    <String, dynamic>{
      'Port': instance.port,
    };
