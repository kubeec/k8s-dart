// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerStatus _$V1ContainerStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'image',
            'imageID',
            'name',
            'ready',
            'restartCount'
          ],
        );
        final val = V1ContainerStatus(
          allocatedResources: $checkedConvert(
              'allocatedResources',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          containerID: $checkedConvert('containerID', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String),
          imageID: $checkedConvert('imageID', (v) => v as String),
          lastState: $checkedConvert(
              'lastState',
              (v) => v == null
                  ? null
                  : V1ContainerState.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String),
          ready: $checkedConvert('ready', (v) => v as bool),
          resources: $checkedConvert(
              'resources',
              (v) => v == null
                  ? null
                  : V1ResourceRequirements.fromJson(v as Map<String, dynamic>)),
          restartCount: $checkedConvert('restartCount', (v) => v as int),
          started: $checkedConvert('started', (v) => v as bool?),
          state: $checkedConvert(
              'state',
              (v) => v == null
                  ? null
                  : V1ContainerState.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerStatusToJson(V1ContainerStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allocatedResources', instance.allocatedResources);
  writeNotNull('containerID', instance.containerID);
  val['image'] = instance.image;
  val['imageID'] = instance.imageID;
  writeNotNull('lastState', instance.lastState?.toJson());
  val['name'] = instance.name;
  val['ready'] = instance.ready;
  writeNotNull('resources', instance.resources?.toJson());
  val['restartCount'] = instance.restartCount;
  writeNotNull('started', instance.started);
  writeNotNull('state', instance.state?.toJson());
  return val;
}
