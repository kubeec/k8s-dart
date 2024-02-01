// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_resource_field_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ResourceFieldSelector _$V1ResourceFieldSelectorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ResourceFieldSelector',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['resource'],
        );
        final val = V1ResourceFieldSelector(
          containerName: $checkedConvert('containerName', (v) => v as String?),
          divisor: $checkedConvert('divisor', (v) => v as String?),
          resource: $checkedConvert('resource', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ResourceFieldSelectorToJson(
    V1ResourceFieldSelector instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('containerName', instance.containerName);
  writeNotNull('divisor', instance.divisor);
  val['resource'] = instance.resource;
  return val;
}
