// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerState _$V1ContainerStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerState',
      json,
      ($checkedConvert) {
        final val = V1ContainerState(
          running: $checkedConvert(
              'running',
              (v) => v == null
                  ? null
                  : V1ContainerStateRunning.fromJson(
                      v as Map<String, dynamic>)),
          terminated: $checkedConvert(
              'terminated',
              (v) => v == null
                  ? null
                  : V1ContainerStateTerminated.fromJson(
                      v as Map<String, dynamic>)),
          waiting: $checkedConvert(
              'waiting',
              (v) => v == null
                  ? null
                  : V1ContainerStateWaiting.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerStateToJson(V1ContainerState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('running', instance.running?.toJson());
  writeNotNull('terminated', instance.terminated?.toJson());
  writeNotNull('waiting', instance.waiting?.toJson());
  return val;
}
