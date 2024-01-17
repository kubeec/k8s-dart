//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ip_block.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_network_policy_peer.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NetworkPolicyPeer {
  /// Returns a new [V1NetworkPolicyPeer] instance.
  V1NetworkPolicyPeer({

     this.ipBlock,

     this.namespaceSelector,

     this.podSelector,
  });

  @JsonKey(
    
    name: r'ipBlock',
    required: false,
    includeIfNull: false
  )


  final V1IPBlock? ipBlock;



  @JsonKey(
    
    name: r'namespaceSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? namespaceSelector;



  @JsonKey(
    
    name: r'podSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? podSelector;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NetworkPolicyPeer &&
     other.ipBlock == ipBlock &&
     other.namespaceSelector == namespaceSelector &&
     other.podSelector == podSelector;

  @override
  int get hashCode =>
    ipBlock.hashCode +
    namespaceSelector.hashCode +
    podSelector.hashCode;

  factory V1NetworkPolicyPeer.fromJson(Map<String, dynamic> json) => _$V1NetworkPolicyPeerFromJson(json);

  Map<String, dynamic> toJson() => _$V1NetworkPolicyPeerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

