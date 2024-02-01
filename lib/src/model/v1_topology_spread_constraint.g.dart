// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_topology_spread_constraint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TopologySpreadConstraint _$V1TopologySpreadConstraintFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TopologySpreadConstraint',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['maxSkew', 'topologyKey', 'whenUnsatisfiable'],
        );
        final val = V1TopologySpreadConstraint(
          labelSelector: $checkedConvert(
              'labelSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          matchLabelKeys: $checkedConvert('matchLabelKeys',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          maxSkew: $checkedConvert('maxSkew', (v) => v as int),
          minDomains: $checkedConvert('minDomains', (v) => v as int?),
          nodeAffinityPolicy:
              $checkedConvert('nodeAffinityPolicy', (v) => v as String?),
          nodeTaintsPolicy:
              $checkedConvert('nodeTaintsPolicy', (v) => v as String?),
          topologyKey: $checkedConvert('topologyKey', (v) => v as String),
          whenUnsatisfiable:
              $checkedConvert('whenUnsatisfiable', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TopologySpreadConstraintToJson(
    V1TopologySpreadConstraint instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('labelSelector', instance.labelSelector?.toJson());
  writeNotNull('matchLabelKeys', instance.matchLabelKeys);
  val['maxSkew'] = instance.maxSkew;
  writeNotNull('minDomains', instance.minDomains);
  writeNotNull('nodeAffinityPolicy', instance.nodeAffinityPolicy);
  writeNotNull('nodeTaintsPolicy', instance.nodeTaintsPolicy);
  val['topologyKey'] = instance.topologyKey;
  val['whenUnsatisfiable'] = instance.whenUnsatisfiable;
  return val;
}
