// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_subresource_scale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceSubresourceScale _$V1CustomResourceSubresourceScaleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceSubresourceScale',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['specReplicasPath', 'statusReplicasPath'],
        );
        final val = V1CustomResourceSubresourceScale(
          labelSelectorPath:
              $checkedConvert('labelSelectorPath', (v) => v as String?),
          specReplicasPath:
              $checkedConvert('specReplicasPath', (v) => v as String),
          statusReplicasPath:
              $checkedConvert('statusReplicasPath', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceSubresourceScaleToJson(
    V1CustomResourceSubresourceScale instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('labelSelectorPath', instance.labelSelectorPath);
  val['specReplicasPath'] = instance.specReplicasPath;
  val['statusReplicasPath'] = instance.statusReplicasPath;
  return val;
}
