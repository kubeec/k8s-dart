// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_csi_driver_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CSIDriverSpec _$V1CSIDriverSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CSIDriverSpec',
      json,
      ($checkedConvert) {
        final val = V1CSIDriverSpec(
          attachRequired: $checkedConvert('attachRequired', (v) => v as bool?),
          fsGroupPolicy: $checkedConvert('fsGroupPolicy', (v) => v as String?),
          podInfoOnMount: $checkedConvert('podInfoOnMount', (v) => v as bool?),
          requiresRepublish:
              $checkedConvert('requiresRepublish', (v) => v as bool?),
          seLinuxMount: $checkedConvert('seLinuxMount', (v) => v as bool?),
          storageCapacity:
              $checkedConvert('storageCapacity', (v) => v as bool?),
          tokenRequests: $checkedConvert(
              'tokenRequests',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      StorageV1TokenRequest.fromJson(e as Map<String, dynamic>))
                  .toList()),
          volumeLifecycleModes: $checkedConvert('volumeLifecycleModes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CSIDriverSpecToJson(V1CSIDriverSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attachRequired', instance.attachRequired);
  writeNotNull('fsGroupPolicy', instance.fsGroupPolicy);
  writeNotNull('podInfoOnMount', instance.podInfoOnMount);
  writeNotNull('requiresRepublish', instance.requiresRepublish);
  writeNotNull('seLinuxMount', instance.seLinuxMount);
  writeNotNull('storageCapacity', instance.storageCapacity);
  writeNotNull(
      'tokenRequests', instance.tokenRequests?.map((e) => e.toJson()).toList());
  writeNotNull('volumeLifecycleModes', instance.volumeLifecycleModes);
  return val;
}
