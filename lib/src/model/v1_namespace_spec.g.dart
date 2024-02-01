// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_namespace_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NamespaceSpec _$V1NamespaceSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NamespaceSpec',
      json,
      ($checkedConvert) {
        final val = V1NamespaceSpec(
          finalizers: $checkedConvert('finalizers',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NamespaceSpecToJson(V1NamespaceSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('finalizers', instance.finalizers);
  return val;
}
