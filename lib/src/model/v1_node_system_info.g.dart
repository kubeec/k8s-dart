// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_system_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeSystemInfo _$V1NodeSystemInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeSystemInfo',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'architecture',
            'bootID',
            'containerRuntimeVersion',
            'kernelVersion',
            'kubeProxyVersion',
            'kubeletVersion',
            'machineID',
            'operatingSystem',
            'osImage',
            'systemUUID'
          ],
        );
        final val = V1NodeSystemInfo(
          architecture: $checkedConvert('architecture', (v) => v as String),
          bootID: $checkedConvert('bootID', (v) => v as String),
          containerRuntimeVersion:
              $checkedConvert('containerRuntimeVersion', (v) => v as String),
          kernelVersion: $checkedConvert('kernelVersion', (v) => v as String),
          kubeProxyVersion:
              $checkedConvert('kubeProxyVersion', (v) => v as String),
          kubeletVersion: $checkedConvert('kubeletVersion', (v) => v as String),
          machineID: $checkedConvert('machineID', (v) => v as String),
          operatingSystem:
              $checkedConvert('operatingSystem', (v) => v as String),
          osImage: $checkedConvert('osImage', (v) => v as String),
          systemUUID: $checkedConvert('systemUUID', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeSystemInfoToJson(V1NodeSystemInfo instance) =>
    <String, dynamic>{
      'architecture': instance.architecture,
      'bootID': instance.bootID,
      'containerRuntimeVersion': instance.containerRuntimeVersion,
      'kernelVersion': instance.kernelVersion,
      'kubeProxyVersion': instance.kubeProxyVersion,
      'kubeletVersion': instance.kubeletVersion,
      'machineID': instance.machineID,
      'operatingSystem': instance.operatingSystem,
      'osImage': instance.osImage,
      'systemUUID': instance.systemUUID,
    };
