// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_daemon_endpoints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeDaemonEndpoints _$V1NodeDaemonEndpointsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeDaemonEndpoints',
      json,
      ($checkedConvert) {
        final val = V1NodeDaemonEndpoints(
          kubeletEndpoint: $checkedConvert(
              'kubeletEndpoint',
              (v) => v == null
                  ? null
                  : V1DaemonEndpoint.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeDaemonEndpointsToJson(
    V1NodeDaemonEndpoints instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kubeletEndpoint', instance.kubeletEndpoint?.toJson());
  return val;
}
