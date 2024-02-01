// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_binding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Binding _$V1BindingFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Binding',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['target'],
        );
        final val = V1Binding(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          target: $checkedConvert('target',
              (v) => V1ObjectReference.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1BindingToJson(V1Binding instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['target'] = instance.target.toJson();
  return val;
}
