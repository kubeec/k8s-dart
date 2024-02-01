// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_security_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodSecurityContext _$V1PodSecurityContextFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodSecurityContext',
      json,
      ($checkedConvert) {
        final val = V1PodSecurityContext(
          fsGroup: $checkedConvert('fsGroup', (v) => v as int?),
          fsGroupChangePolicy:
              $checkedConvert('fsGroupChangePolicy', (v) => v as String?),
          runAsGroup: $checkedConvert('runAsGroup', (v) => v as int?),
          runAsNonRoot: $checkedConvert('runAsNonRoot', (v) => v as bool?),
          runAsUser: $checkedConvert('runAsUser', (v) => v as int?),
          seLinuxOptions: $checkedConvert(
              'seLinuxOptions',
              (v) => v == null
                  ? null
                  : V1SELinuxOptions.fromJson(v as Map<String, dynamic>)),
          seccompProfile: $checkedConvert(
              'seccompProfile',
              (v) => v == null
                  ? null
                  : V1SeccompProfile.fromJson(v as Map<String, dynamic>)),
          supplementalGroups: $checkedConvert('supplementalGroups',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
          sysctls: $checkedConvert(
              'sysctls',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Sysctl.fromJson(e as Map<String, dynamic>))
                  .toList()),
          windowsOptions: $checkedConvert(
              'windowsOptions',
              (v) => v == null
                  ? null
                  : V1WindowsSecurityContextOptions.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodSecurityContextToJson(
    V1PodSecurityContext instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsGroup', instance.fsGroup);
  writeNotNull('fsGroupChangePolicy', instance.fsGroupChangePolicy);
  writeNotNull('runAsGroup', instance.runAsGroup);
  writeNotNull('runAsNonRoot', instance.runAsNonRoot);
  writeNotNull('runAsUser', instance.runAsUser);
  writeNotNull('seLinuxOptions', instance.seLinuxOptions?.toJson());
  writeNotNull('seccompProfile', instance.seccompProfile?.toJson());
  writeNotNull('supplementalGroups', instance.supplementalGroups);
  writeNotNull('sysctls', instance.sysctls?.map((e) => e.toJson()).toList());
  writeNotNull('windowsOptions', instance.windowsOptions?.toJson());
  return val;
}
