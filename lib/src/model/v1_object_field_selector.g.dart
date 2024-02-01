// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_object_field_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ObjectFieldSelector _$V1ObjectFieldSelectorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ObjectFieldSelector',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['fieldPath'],
        );
        final val = V1ObjectFieldSelector(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          fieldPath: $checkedConvert('fieldPath', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ObjectFieldSelectorToJson(
    V1ObjectFieldSelector instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['fieldPath'] = instance.fieldPath;
  return val;
}
