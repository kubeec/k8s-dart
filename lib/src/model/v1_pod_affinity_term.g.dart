// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_affinity_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodAffinityTerm _$V1PodAffinityTermFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodAffinityTerm',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['topologyKey'],
        );
        final val = V1PodAffinityTerm(
          labelSelector: $checkedConvert(
              'labelSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          namespaceSelector: $checkedConvert(
              'namespaceSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          namespaces: $checkedConvert('namespaces',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          topologyKey: $checkedConvert('topologyKey', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodAffinityTermToJson(V1PodAffinityTerm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('labelSelector', instance.labelSelector?.toJson());
  writeNotNull('namespaceSelector', instance.namespaceSelector?.toJson());
  writeNotNull('namespaces', instance.namespaces);
  val['topologyKey'] = instance.topologyKey;
  return val;
}
