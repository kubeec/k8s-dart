// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_network_policy_peer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NetworkPolicyPeer _$V1NetworkPolicyPeerFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NetworkPolicyPeer',
      json,
      ($checkedConvert) {
        final val = V1NetworkPolicyPeer(
          ipBlock: $checkedConvert(
              'ipBlock',
              (v) => v == null
                  ? null
                  : V1IPBlock.fromJson(v as Map<String, dynamic>)),
          namespaceSelector: $checkedConvert(
              'namespaceSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          podSelector: $checkedConvert(
              'podSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NetworkPolicyPeerToJson(V1NetworkPolicyPeer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ipBlock', instance.ipBlock?.toJson());
  writeNotNull('namespaceSelector', instance.namespaceSelector?.toJson());
  writeNotNull('podSelector', instance.podSelector?.toJson());
  return val;
}
