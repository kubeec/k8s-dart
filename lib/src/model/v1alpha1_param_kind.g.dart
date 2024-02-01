// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_param_kind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ParamKind _$V1alpha1ParamKindFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ParamKind',
      json,
      ($checkedConvert) {
        final val = V1alpha1ParamKind(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ParamKindToJson(V1alpha1ParamKind instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  return val;
}
