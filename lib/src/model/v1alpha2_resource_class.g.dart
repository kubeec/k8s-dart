// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClass _$V1alpha2ResourceClassFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2ResourceClass',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['driverName'],
        );
        final val = V1alpha2ResourceClass(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          driverName: $checkedConvert('driverName', (v) => v as String),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          parametersRef: $checkedConvert(
              'parametersRef',
              (v) => v == null
                  ? null
                  : V1alpha2ResourceClassParametersReference.fromJson(
                      v as Map<String, dynamic>)),
          suitableNodes: $checkedConvert(
              'suitableNodes',
              (v) => v == null
                  ? null
                  : V1NodeSelector.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2ResourceClassToJson(
    V1alpha2ResourceClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['driverName'] = instance.driverName;
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('parametersRef', instance.parametersRef?.toJson());
  writeNotNull('suitableNodes', instance.suitableNodes?.toJson());
  return val;
}
