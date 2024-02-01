// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_subresources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceSubresources _$V1CustomResourceSubresourcesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceSubresources',
      json,
      ($checkedConvert) {
        final val = V1CustomResourceSubresources(
          scale: $checkedConvert(
              'scale',
              (v) => v == null
                  ? null
                  : V1CustomResourceSubresourceScale.fromJson(
                      v as Map<String, dynamic>)),
          status: $checkedConvert('status', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceSubresourcesToJson(
    V1CustomResourceSubresources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scale', instance.scale?.toJson());
  writeNotNull('status', instance.status);
  return val;
}
