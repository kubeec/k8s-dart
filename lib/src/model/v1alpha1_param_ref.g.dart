// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_param_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ParamRef _$V1alpha1ParamRefFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ParamRef',
      json,
      ($checkedConvert) {
        final val = V1alpha1ParamRef(
          name: $checkedConvert('name', (v) => v as String?),
          namespace: $checkedConvert('namespace', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ParamRefToJson(V1alpha1ParamRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  return val;
}
