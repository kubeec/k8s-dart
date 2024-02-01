// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerImage _$V1ContainerImageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerImage',
      json,
      ($checkedConvert) {
        final val = V1ContainerImage(
          names: $checkedConvert('names',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          sizeBytes: $checkedConvert('sizeBytes', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerImageToJson(V1ContainerImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('names', instance.names);
  writeNotNull('sizeBytes', instance.sizeBytes);
  return val;
}
