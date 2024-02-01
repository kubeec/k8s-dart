// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_config_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeConfigSource _$V1NodeConfigSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeConfigSource',
      json,
      ($checkedConvert) {
        final val = V1NodeConfigSource(
          configMap: $checkedConvert(
              'configMap',
              (v) => v == null
                  ? null
                  : V1ConfigMapNodeConfigSource.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeConfigSourceToJson(V1NodeConfigSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('configMap', instance.configMap?.toJson());
  return val;
}
