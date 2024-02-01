// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_service_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ServiceSpec _$V1ServiceSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ServiceSpec',
      json,
      ($checkedConvert) {
        final val = V1ServiceSpec(
          allocateLoadBalancerNodePorts: $checkedConvert(
              'allocateLoadBalancerNodePorts', (v) => v as bool?),
          clusterIP: $checkedConvert('clusterIP', (v) => v as String?),
          clusterIPs: $checkedConvert('clusterIPs',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          externalIPs: $checkedConvert('externalIPs',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          externalName: $checkedConvert('externalName', (v) => v as String?),
          externalTrafficPolicy:
              $checkedConvert('externalTrafficPolicy', (v) => v as String?),
          healthCheckNodePort:
              $checkedConvert('healthCheckNodePort', (v) => v as int?),
          internalTrafficPolicy:
              $checkedConvert('internalTrafficPolicy', (v) => v as String?),
          ipFamilies: $checkedConvert('ipFamilies',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          ipFamilyPolicy:
              $checkedConvert('ipFamilyPolicy', (v) => v as String?),
          loadBalancerClass:
              $checkedConvert('loadBalancerClass', (v) => v as String?),
          loadBalancerIP:
              $checkedConvert('loadBalancerIP', (v) => v as String?),
          loadBalancerSourceRanges: $checkedConvert('loadBalancerSourceRanges',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          ports: $checkedConvert(
              'ports',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1ServicePort.fromJson(e as Map<String, dynamic>))
                  .toList()),
          publishNotReadyAddresses:
              $checkedConvert('publishNotReadyAddresses', (v) => v as bool?),
          selector: $checkedConvert(
              'selector',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          sessionAffinity:
              $checkedConvert('sessionAffinity', (v) => v as String?),
          sessionAffinityConfig: $checkedConvert(
              'sessionAffinityConfig',
              (v) => v == null
                  ? null
                  : V1SessionAffinityConfig.fromJson(
                      v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ServiceSpecToJson(V1ServiceSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'allocateLoadBalancerNodePorts', instance.allocateLoadBalancerNodePorts);
  writeNotNull('clusterIP', instance.clusterIP);
  writeNotNull('clusterIPs', instance.clusterIPs);
  writeNotNull('externalIPs', instance.externalIPs);
  writeNotNull('externalName', instance.externalName);
  writeNotNull('externalTrafficPolicy', instance.externalTrafficPolicy);
  writeNotNull('healthCheckNodePort', instance.healthCheckNodePort);
  writeNotNull('internalTrafficPolicy', instance.internalTrafficPolicy);
  writeNotNull('ipFamilies', instance.ipFamilies);
  writeNotNull('ipFamilyPolicy', instance.ipFamilyPolicy);
  writeNotNull('loadBalancerClass', instance.loadBalancerClass);
  writeNotNull('loadBalancerIP', instance.loadBalancerIP);
  writeNotNull('loadBalancerSourceRanges', instance.loadBalancerSourceRanges);
  writeNotNull('ports', instance.ports?.map((e) => e.toJson()).toList());
  writeNotNull('publishNotReadyAddresses', instance.publishNotReadyAddresses);
  writeNotNull('selector', instance.selector);
  writeNotNull('sessionAffinity', instance.sessionAffinity);
  writeNotNull(
      'sessionAffinityConfig', instance.sessionAffinityConfig?.toJson());
  writeNotNull('type', instance.type);
  return val;
}
