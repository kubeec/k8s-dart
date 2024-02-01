// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_lifecycle_handler.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LifecycleHandler _$V1LifecycleHandlerFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LifecycleHandler',
      json,
      ($checkedConvert) {
        final val = V1LifecycleHandler(
          exec: $checkedConvert(
              'exec',
              (v) => v == null
                  ? null
                  : V1ExecAction.fromJson(v as Map<String, dynamic>)),
          httpGet: $checkedConvert(
              'httpGet',
              (v) => v == null
                  ? null
                  : V1HTTPGetAction.fromJson(v as Map<String, dynamic>)),
          tcpSocket: $checkedConvert(
              'tcpSocket',
              (v) => v == null
                  ? null
                  : V1TCPSocketAction.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LifecycleHandlerToJson(V1LifecycleHandler instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exec', instance.exec?.toJson());
  writeNotNull('httpGet', instance.httpGet?.toJson());
  writeNotNull('tcpSocket', instance.tcpSocket?.toJson());
  return val;
}
