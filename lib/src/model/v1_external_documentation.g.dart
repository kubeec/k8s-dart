// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_external_documentation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ExternalDocumentation _$V1ExternalDocumentationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ExternalDocumentation',
      json,
      ($checkedConvert) {
        final val = V1ExternalDocumentation(
          description: $checkedConvert('description', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ExternalDocumentationToJson(
    V1ExternalDocumentation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('url', instance.url);
  return val;
}
