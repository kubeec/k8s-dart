// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_http_get_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HTTPGetAction _$V1HTTPGetActionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1HTTPGetAction',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['port'],
        );
        final val = V1HTTPGetAction(
          host: $checkedConvert('host', (v) => v as String?),
          httpHeaders: $checkedConvert(
              'httpHeaders',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1HTTPHeader.fromJson(e as Map<String, dynamic>))
                  .toList()),
          path: $checkedConvert('path', (v) => v as String?),
          port: $checkedConvert('port', (v) => v as Object),
          scheme: $checkedConvert('scheme', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HTTPGetActionToJson(V1HTTPGetAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('host', instance.host);
  writeNotNull(
      'httpHeaders', instance.httpHeaders?.map((e) => e.toJson()).toList());
  writeNotNull('path', instance.path);
  val['port'] = instance.port;
  writeNotNull('scheme', instance.scheme);
  return val;
}
