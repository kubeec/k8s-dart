// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodStatus _$V1PodStatusFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1PodStatus',
      json,
      ($checkedConvert) {
        final val = V1PodStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1PodCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          containerStatuses: $checkedConvert(
              'containerStatuses',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ContainerStatus.fromJson(e as Map<String, dynamic>))
                  .toList()),
          ephemeralContainerStatuses: $checkedConvert(
              'ephemeralContainerStatuses',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ContainerStatus.fromJson(e as Map<String, dynamic>))
                  .toList()),
          hostIP: $checkedConvert('hostIP', (v) => v as String?),
          initContainerStatuses: $checkedConvert(
              'initContainerStatuses',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ContainerStatus.fromJson(e as Map<String, dynamic>))
                  .toList()),
          message: $checkedConvert('message', (v) => v as String?),
          nominatedNodeName:
              $checkedConvert('nominatedNodeName', (v) => v as String?),
          phase: $checkedConvert('phase', (v) => v as String?),
          podIP: $checkedConvert('podIP', (v) => v as String?),
          podIPs: $checkedConvert(
              'podIPs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1PodIP.fromJson(e as Map<String, dynamic>))
                  .toList()),
          qosClass: $checkedConvert('qosClass', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          resize: $checkedConvert('resize', (v) => v as String?),
          startTime: $checkedConvert('startTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodStatusToJson(V1PodStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('containerStatuses',
      instance.containerStatuses?.map((e) => e.toJson()).toList());
  writeNotNull('ephemeralContainerStatuses',
      instance.ephemeralContainerStatuses?.map((e) => e.toJson()).toList());
  writeNotNull('hostIP', instance.hostIP);
  writeNotNull('initContainerStatuses',
      instance.initContainerStatuses?.map((e) => e.toJson()).toList());
  writeNotNull('message', instance.message);
  writeNotNull('nominatedNodeName', instance.nominatedNodeName);
  writeNotNull('phase', instance.phase);
  writeNotNull('podIP', instance.podIP);
  writeNotNull('podIPs', instance.podIPs?.map((e) => e.toJson()).toList());
  writeNotNull('qosClass', instance.qosClass);
  writeNotNull('reason', instance.reason);
  writeNotNull('resize', instance.resize);
  writeNotNull('startTime', instance.startTime?.toIso8601String());
  return val;
}
