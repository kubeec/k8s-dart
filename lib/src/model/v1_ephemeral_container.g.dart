// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ephemeral_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EphemeralContainer _$V1EphemeralContainerFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EphemeralContainer',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1EphemeralContainer(
          args: $checkedConvert('args',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          command: $checkedConvert('command',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          env: $checkedConvert(
              'env',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1EnvVar.fromJson(e as Map<String, dynamic>))
                  .toList()),
          envFrom: $checkedConvert(
              'envFrom',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1EnvFromSource.fromJson(e as Map<String, dynamic>))
                  .toList()),
          image: $checkedConvert('image', (v) => v as String?),
          imagePullPolicy:
              $checkedConvert('imagePullPolicy', (v) => v as String?),
          lifecycle: $checkedConvert(
              'lifecycle',
              (v) => v == null
                  ? null
                  : V1Lifecycle.fromJson(v as Map<String, dynamic>)),
          livenessProbe: $checkedConvert(
              'livenessProbe',
              (v) => v == null
                  ? null
                  : V1Probe.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String),
          ports: $checkedConvert(
              'ports',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ContainerPort.fromJson(e as Map<String, dynamic>))
                  .toList()),
          readinessProbe: $checkedConvert(
              'readinessProbe',
              (v) => v == null
                  ? null
                  : V1Probe.fromJson(v as Map<String, dynamic>)),
          resizePolicy: $checkedConvert(
              'resizePolicy',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1ContainerResizePolicy.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          resources: $checkedConvert(
              'resources',
              (v) => v == null
                  ? null
                  : V1ResourceRequirements.fromJson(v as Map<String, dynamic>)),
          securityContext: $checkedConvert(
              'securityContext',
              (v) => v == null
                  ? null
                  : V1SecurityContext.fromJson(v as Map<String, dynamic>)),
          startupProbe: $checkedConvert(
              'startupProbe',
              (v) => v == null
                  ? null
                  : V1Probe.fromJson(v as Map<String, dynamic>)),
          stdin: $checkedConvert('stdin', (v) => v as bool?),
          stdinOnce: $checkedConvert('stdinOnce', (v) => v as bool?),
          targetContainerName:
              $checkedConvert('targetContainerName', (v) => v as String?),
          terminationMessagePath:
              $checkedConvert('terminationMessagePath', (v) => v as String?),
          terminationMessagePolicy:
              $checkedConvert('terminationMessagePolicy', (v) => v as String?),
          tty: $checkedConvert('tty', (v) => v as bool?),
          volumeDevices: $checkedConvert(
              'volumeDevices',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1VolumeDevice.fromJson(e as Map<String, dynamic>))
                  .toList()),
          volumeMounts: $checkedConvert(
              'volumeMounts',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1VolumeMount.fromJson(e as Map<String, dynamic>))
                  .toList()),
          workingDir: $checkedConvert('workingDir', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EphemeralContainerToJson(
    V1EphemeralContainer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('args', instance.args);
  writeNotNull('command', instance.command);
  writeNotNull('env', instance.env?.map((e) => e.toJson()).toList());
  writeNotNull('envFrom', instance.envFrom?.map((e) => e.toJson()).toList());
  writeNotNull('image', instance.image);
  writeNotNull('imagePullPolicy', instance.imagePullPolicy);
  writeNotNull('lifecycle', instance.lifecycle?.toJson());
  writeNotNull('livenessProbe', instance.livenessProbe?.toJson());
  val['name'] = instance.name;
  writeNotNull('ports', instance.ports?.map((e) => e.toJson()).toList());
  writeNotNull('readinessProbe', instance.readinessProbe?.toJson());
  writeNotNull(
      'resizePolicy', instance.resizePolicy?.map((e) => e.toJson()).toList());
  writeNotNull('resources', instance.resources?.toJson());
  writeNotNull('securityContext', instance.securityContext?.toJson());
  writeNotNull('startupProbe', instance.startupProbe?.toJson());
  writeNotNull('stdin', instance.stdin);
  writeNotNull('stdinOnce', instance.stdinOnce);
  writeNotNull('targetContainerName', instance.targetContainerName);
  writeNotNull('terminationMessagePath', instance.terminationMessagePath);
  writeNotNull('terminationMessagePolicy', instance.terminationMessagePolicy);
  writeNotNull('tty', instance.tty);
  writeNotNull(
      'volumeDevices', instance.volumeDevices?.map((e) => e.toJson()).toList());
  writeNotNull(
      'volumeMounts', instance.volumeMounts?.map((e) => e.toJson()).toList());
  writeNotNull('workingDir', instance.workingDir);
  return val;
}
