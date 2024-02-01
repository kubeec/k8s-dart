// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodSpec _$V1PodSpecFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1PodSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['containers'],
        );
        final val = V1PodSpec(
          activeDeadlineSeconds:
              $checkedConvert('activeDeadlineSeconds', (v) => v as int?),
          affinity: $checkedConvert(
              'affinity',
              (v) => v == null
                  ? null
                  : V1Affinity.fromJson(v as Map<String, dynamic>)),
          automountServiceAccountToken: $checkedConvert(
              'automountServiceAccountToken', (v) => v as bool?),
          containers: $checkedConvert(
              'containers',
              (v) => (v as List<dynamic>)
                  .map((e) => V1Container.fromJson(e as Map<String, dynamic>))
                  .toList()),
          dnsConfig: $checkedConvert(
              'dnsConfig',
              (v) => v == null
                  ? null
                  : V1PodDNSConfig.fromJson(v as Map<String, dynamic>)),
          dnsPolicy: $checkedConvert('dnsPolicy', (v) => v as String?),
          enableServiceLinks:
              $checkedConvert('enableServiceLinks', (v) => v as bool?),
          ephemeralContainers: $checkedConvert(
              'ephemeralContainers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1EphemeralContainer.fromJson(e as Map<String, dynamic>))
                  .toList()),
          hostAliases: $checkedConvert(
              'hostAliases',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1HostAlias.fromJson(e as Map<String, dynamic>))
                  .toList()),
          hostIPC: $checkedConvert('hostIPC', (v) => v as bool?),
          hostNetwork: $checkedConvert('hostNetwork', (v) => v as bool?),
          hostPID: $checkedConvert('hostPID', (v) => v as bool?),
          hostUsers: $checkedConvert('hostUsers', (v) => v as bool?),
          hostname: $checkedConvert('hostname', (v) => v as String?),
          imagePullSecrets: $checkedConvert(
              'imagePullSecrets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1LocalObjectReference.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          initContainers: $checkedConvert(
              'initContainers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Container.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nodeName: $checkedConvert('nodeName', (v) => v as String?),
          nodeSelector: $checkedConvert(
              'nodeSelector',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          os: $checkedConvert(
              'os',
              (v) => v == null
                  ? null
                  : V1PodOS.fromJson(v as Map<String, dynamic>)),
          overhead: $checkedConvert(
              'overhead',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          preemptionPolicy:
              $checkedConvert('preemptionPolicy', (v) => v as String?),
          priority: $checkedConvert('priority', (v) => v as int?),
          priorityClassName:
              $checkedConvert('priorityClassName', (v) => v as String?),
          readinessGates: $checkedConvert(
              'readinessGates',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1PodReadinessGate.fromJson(e as Map<String, dynamic>))
                  .toList()),
          resourceClaims: $checkedConvert(
              'resourceClaims',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1PodResourceClaim.fromJson(e as Map<String, dynamic>))
                  .toList()),
          restartPolicy: $checkedConvert('restartPolicy', (v) => v as String?),
          runtimeClassName:
              $checkedConvert('runtimeClassName', (v) => v as String?),
          schedulerName: $checkedConvert('schedulerName', (v) => v as String?),
          schedulingGates: $checkedConvert(
              'schedulingGates',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1PodSchedulingGate.fromJson(e as Map<String, dynamic>))
                  .toList()),
          securityContext: $checkedConvert(
              'securityContext',
              (v) => v == null
                  ? null
                  : V1PodSecurityContext.fromJson(v as Map<String, dynamic>)),
          serviceAccount:
              $checkedConvert('serviceAccount', (v) => v as String?),
          serviceAccountName:
              $checkedConvert('serviceAccountName', (v) => v as String?),
          setHostnameAsFQDN:
              $checkedConvert('setHostnameAsFQDN', (v) => v as bool?),
          shareProcessNamespace:
              $checkedConvert('shareProcessNamespace', (v) => v as bool?),
          subdomain: $checkedConvert('subdomain', (v) => v as String?),
          terminationGracePeriodSeconds: $checkedConvert(
              'terminationGracePeriodSeconds', (v) => v as int?),
          tolerations: $checkedConvert(
              'tolerations',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Toleration.fromJson(e as Map<String, dynamic>))
                  .toList()),
          topologySpreadConstraints: $checkedConvert(
              'topologySpreadConstraints',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1TopologySpreadConstraint.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          volumes: $checkedConvert(
              'volumes',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Volume.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodSpecToJson(V1PodSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('activeDeadlineSeconds', instance.activeDeadlineSeconds);
  writeNotNull('affinity', instance.affinity?.toJson());
  writeNotNull(
      'automountServiceAccountToken', instance.automountServiceAccountToken);
  val['containers'] = instance.containers.map((e) => e.toJson()).toList();
  writeNotNull('dnsConfig', instance.dnsConfig?.toJson());
  writeNotNull('dnsPolicy', instance.dnsPolicy);
  writeNotNull('enableServiceLinks', instance.enableServiceLinks);
  writeNotNull('ephemeralContainers',
      instance.ephemeralContainers?.map((e) => e.toJson()).toList());
  writeNotNull(
      'hostAliases', instance.hostAliases?.map((e) => e.toJson()).toList());
  writeNotNull('hostIPC', instance.hostIPC);
  writeNotNull('hostNetwork', instance.hostNetwork);
  writeNotNull('hostPID', instance.hostPID);
  writeNotNull('hostUsers', instance.hostUsers);
  writeNotNull('hostname', instance.hostname);
  writeNotNull('imagePullSecrets',
      instance.imagePullSecrets?.map((e) => e.toJson()).toList());
  writeNotNull('initContainers',
      instance.initContainers?.map((e) => e.toJson()).toList());
  writeNotNull('nodeName', instance.nodeName);
  writeNotNull('nodeSelector', instance.nodeSelector);
  writeNotNull('os', instance.os?.toJson());
  writeNotNull('overhead', instance.overhead);
  writeNotNull('preemptionPolicy', instance.preemptionPolicy);
  writeNotNull('priority', instance.priority);
  writeNotNull('priorityClassName', instance.priorityClassName);
  writeNotNull('readinessGates',
      instance.readinessGates?.map((e) => e.toJson()).toList());
  writeNotNull('resourceClaims',
      instance.resourceClaims?.map((e) => e.toJson()).toList());
  writeNotNull('restartPolicy', instance.restartPolicy);
  writeNotNull('runtimeClassName', instance.runtimeClassName);
  writeNotNull('schedulerName', instance.schedulerName);
  writeNotNull('schedulingGates',
      instance.schedulingGates?.map((e) => e.toJson()).toList());
  writeNotNull('securityContext', instance.securityContext?.toJson());
  writeNotNull('serviceAccount', instance.serviceAccount);
  writeNotNull('serviceAccountName', instance.serviceAccountName);
  writeNotNull('setHostnameAsFQDN', instance.setHostnameAsFQDN);
  writeNotNull('shareProcessNamespace', instance.shareProcessNamespace);
  writeNotNull('subdomain', instance.subdomain);
  writeNotNull(
      'terminationGracePeriodSeconds', instance.terminationGracePeriodSeconds);
  writeNotNull(
      'tolerations', instance.tolerations?.map((e) => e.toJson()).toList());
  writeNotNull('topologySpreadConstraints',
      instance.topologySpreadConstraints?.map((e) => e.toJson()).toList());
  writeNotNull('volumes', instance.volumes?.map((e) => e.toJson()).toList());
  return val;
}
