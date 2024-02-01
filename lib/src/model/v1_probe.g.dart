// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_probe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Probe _$V1ProbeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Probe',
      json,
      ($checkedConvert) {
        final val = V1Probe(
          exec: $checkedConvert(
              'exec',
              (v) => v == null
                  ? null
                  : V1ExecAction.fromJson(v as Map<String, dynamic>)),
          failureThreshold:
              $checkedConvert('failureThreshold', (v) => v as int?),
          grpc: $checkedConvert(
              'grpc',
              (v) => v == null
                  ? null
                  : V1GRPCAction.fromJson(v as Map<String, dynamic>)),
          httpGet: $checkedConvert(
              'httpGet',
              (v) => v == null
                  ? null
                  : V1HTTPGetAction.fromJson(v as Map<String, dynamic>)),
          initialDelaySeconds:
              $checkedConvert('initialDelaySeconds', (v) => v as int?),
          periodSeconds: $checkedConvert('periodSeconds', (v) => v as int?),
          successThreshold:
              $checkedConvert('successThreshold', (v) => v as int?),
          tcpSocket: $checkedConvert(
              'tcpSocket',
              (v) => v == null
                  ? null
                  : V1TCPSocketAction.fromJson(v as Map<String, dynamic>)),
          terminationGracePeriodSeconds: $checkedConvert(
              'terminationGracePeriodSeconds', (v) => v as int?),
          timeoutSeconds: $checkedConvert('timeoutSeconds', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ProbeToJson(V1Probe instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exec', instance.exec?.toJson());
  writeNotNull('failureThreshold', instance.failureThreshold);
  writeNotNull('grpc', instance.grpc?.toJson());
  writeNotNull('httpGet', instance.httpGet?.toJson());
  writeNotNull('initialDelaySeconds', instance.initialDelaySeconds);
  writeNotNull('periodSeconds', instance.periodSeconds);
  writeNotNull('successThreshold', instance.successThreshold);
  writeNotNull('tcpSocket', instance.tcpSocket?.toJson());
  writeNotNull(
      'terminationGracePeriodSeconds', instance.terminationGracePeriodSeconds);
  writeNotNull('timeoutSeconds', instance.timeoutSeconds);
  return val;
}
